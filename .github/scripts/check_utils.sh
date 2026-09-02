#!/usr/bin/env bash

init_summary() {
  local summary_file="${SUMMARY_FILE:-summary.md}"
  local log_dir="${LOG_DIR:-.github/workflow-logs}"

  mkdir -p "$log_dir"
  rm -f "$log_dir"/*.status "$log_dir"/*.stdout.log "$log_dir"/*.stderr.log 2>/dev/null || true

  {
    echo "# Autograding Summary"
    echo
    echo "Commit: ${GITHUB_SHA}"
    echo
  } > "$summary_file"
}

extract_assert_message() {
  local stdout_log="$1"
  local stderr_log="$2"

  local message
  message=$(awk '
    /AssertionError:/ {
      line = $0
      sub(/^[[:space:]]*E[[:space:]]+/, "", line)
      sub(/^[[:space:]]*/, "", line)
      sub(/^AssertionError:[[:space:]]*/, "", line)
      print line
      exit
    }
  ' "$stdout_log" "$stderr_log")

  if [ -n "$message" ]; then
    printf '%s\n' "$message"
  fi
}

next_check_id() {
  local log_dir="${LOG_DIR:-.github/workflow-logs}"
  local count=0

  for status_file in "$log_dir"/*.status; do
    if [ -f "$status_file" ]; then
      count=$((count + 1))
    fi
  done

  printf 'check_%03d\n' "$((count + 1))"
}

run_check() {
  local check_title="$1"
  shift 1

  local check_id
  check_id=$(next_check_id)

  local summary_file="${SUMMARY_FILE:-summary.md}"
  local log_dir="${LOG_DIR:-.github/workflow-logs}"
  local stdout_log="$log_dir/${check_id}.stdout.log"
  local stderr_log="$log_dir/${check_id}.stderr.log"
  local status_file="$log_dir/${check_id}.status"

  "$@" > >(tee "$stdout_log") 2> >(tee "$stderr_log" >&2)
  local status=$?

  echo "$status" > "$status_file"

  {
    echo "## ${check_title}"
    echo
    if [ "$status" -eq 0 ]; then
      echo "- Status: PASS"
    else
      echo "- Status: FAIL"
      local assert_message
      assert_message=$(extract_assert_message "$stdout_log" "$stderr_log")

      if [ -n "$assert_message" ]; then
        echo "- Assertion: ${assert_message}"
      elif [ -s "$stderr_log" ]; then
        echo
        echo "- stderr (last 30 lines):"
        echo '```text'
        tail -n 30 "$stderr_log"
        echo '```'
      elif [ -s "$stdout_log" ]; then
        echo
        echo "- stdout (last 30 lines):"
        echo '```text'
        tail -n 30 "$stdout_log"
        echo '```'
      else
        echo "- No command output captured."
      fi
    fi
    echo
  } >> "$summary_file"

  return "$status"
}

finalize_checks() {
  local summary_file="${SUMMARY_FILE:-summary.md}"
  local log_dir="${LOG_DIR:-.github/workflow-logs}"

  local checks_run=0
  local failures=0

  for status_file in "$log_dir"/*.status; do
    if [ -f "$status_file" ]; then
      checks_run=$((checks_run + 1))
      local status
      status=$(cat "$status_file")
      if [ "$status" -ne 0 ]; then
        failures=$((failures + 1))
      fi
    fi
  done

  {
    echo "## Overall result"
    echo
    echo "- Total checks: ${checks_run}"
    echo "- Failed checks: ${failures}"
    if [ "$failures" -eq 0 ]; then
      echo "- Conclusion: PASS"
    else
      echo "- Conclusion: FAIL"
    fi
  } >> "$summary_file"

  if [ "$failures" -ne 0 ]; then
    echo "${failures} check(s) failed; failing workflow intentionally. See summary.md and GITHUB_STEP_SUMMARY for details." >&2
    return 1
  fi

  echo "All ${checks_run} check(s) passed."
  return 0
}
