#!/usr/bin/env bash
# 新建一个知识点目录：bash newtopic.sh 06 mycat
set -e
ROOT="$HOME/embedded-linux"
W="$1"; T="$2"
if [ -z "$W" ] || [ -z "$T" ]; then
    echo "用法: bash newtopic.sh <周次两位数> <知识点名>"
    echo "示例: bash newtopic.sh 06 mycat"
    exit 1
fi
DIR="$ROOT/week$W/$T"
mkdir -p "$DIR"
cp "$ROOT/templates/Makefile" "$DIR/Makefile"
cp "$ROOT/templates/notes.md" "$DIR/notes.md"
cat > "$DIR/main.c" <<'EOF'
#include <stdio.h>

int main(void)
{
    printf("hello\n");
    return 0;
}
EOF
echo "已创建: $DIR"
echo "  main.c  Makefile  notes.md"
cd "$DIR" && vim main.c
