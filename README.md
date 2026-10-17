# 嵌入式 Linux 应用开发学习仓库

24 周求职向学习记录。每周一个目录，每个知识点一个子目录，
子目录内含源码 + Makefile + notes.md。

## 目录约定
- week01 ... week24 —— 按周归档
- lib/       —— 自己封装的可复用库（libds 等）
- notes/     —— 跨周的主题笔记、八股、面经
- snippets/  —— 随手小片段
- templates/ —— Makefile / notes 模板

## 日常用法
```bash
bash ~/embedded-linux/newtopic.sh 06 mycat   # 新建知识点目录并打开 vim
cd ~/embedded-linux/week06/mycat && make run
```
