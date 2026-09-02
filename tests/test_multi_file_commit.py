import subprocess


def test_multi_file_commit() -> None:
    log_cmd = ["git", "log", "--pretty=format:%H%x09%an"]
    log_output = subprocess.check_output(log_cmd, text=True)
    root_commits_cmd = ["git", "rev-list", "--max-parents=0", "HEAD"]
    root_commits_output = subprocess.check_output(root_commits_cmd, text=True)
    root_commits = {commit.strip() for commit in root_commits_output.splitlines() if commit.strip()}

    found_multi_file_commit = False
    for line in log_output.splitlines():
        if not line.strip():
            continue

        commit_sha, author = line.split("\t", 1)
        if commit_sha in root_commits:
            continue

        diff_cmd = ["git", "diff-tree", "--no-commit-id", "--name-only", "-r", commit_sha]
        changed_files = subprocess.check_output(diff_cmd, text=True)
        file_count = sum(1 for entry in changed_files.splitlines() if entry.strip())

        if file_count > 1:
            found_multi_file_commit = True
            break

    assert found_multi_file_commit, (
        "No multi-file commit detected in non-bot commits. "
        "Please make a commit that includes both edited and new markdown files."
    )