#!/usr/bin/env bash
set -e
cd "$HOME/embedded-linux"
git add -A
if git diff --cached --quiet; then
    echo "没有改动可提交 —— 今天的 notes.md 写了吗？"
    exit 0
fi
git commit -m "${1:-日常整理}"
echo "已提交：$1"
git log --oneline -5
