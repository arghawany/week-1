from pathlib import Path


def test_placeholder_line_removed() -> None:
    target_file = Path("12_commit_online.md")
    assert target_file.exists(), "12_commit_online.md is missing."

    content = target_file.read_text(encoding="utf-8")
    placeholder = "% REPLACE THIS LINE WITH YOUR MARKDOWN CONTENT"
    assert placeholder not in content, (
        "Placeholder line is still present in 12_commit_online.md. "
        "Please replace it with your own markdown content."
    )