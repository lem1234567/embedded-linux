# Week 1 · Linux 命令练习

## Day 1（10/18）

### pwd — 我在哪
pwd获取目前所在位置路径

### ls 列出当前目录下的文件
-l 显示文件详细信息（包括权限、所属用户、文件大小、时间、文件名），-h 大小显示成 4.0K 这种，-a 显示隐藏文件。

### cd 到达指定目录
cd ..返回上一层目录
cd ~返回根目录
cd ../.. 返回上两层目录
cd - 返回上次使用的目录

### tree — 整体结构
以当前目录为根节点以树状结构显示其下文件
tree -L 1 只显示一层目录
tree -d -L 1 只看往下一层的目录，不看文件

### less 查看文件内容
例：less README.MD
空格  下一页
/关键词  搜索关键词（如/week)
n  跳转到下一个匹配
q  退出

### mkdir 新建目录
mkdir -p 新建多级目录（如：mkdir -p a/b/c）

### touch 新建文件
touch 新文件名 
touch 已存在文件名 （更新修改时间，通过ls -l能看见）

### cp copy
cp a b （把a的内容复制到b，b不存在就新建一个）
cp -r 目录1 目录2 （复制目录必须加 -r，否则会报错）

### mv 移动/重命名
mv file2.txt newname.txt     改名
mv newname.txt backup/       带斜杠 → 移进目录
mv newname.txt backup2/      不带斜杠 + 目录不存在 → 文件被改名（坑！）

### rm  remove删除
rm file1.txt        删文件
rm -r backup/       删目录要 -r
rm -rf backup/      -f 强制，不询问
-i 总是询问

### 明天复习自测
1.怎么知道当前在哪个目录？
2.怎么看 .gitignore 这种隐藏文件？
3.cd - 是干嘛的？
4.less 打开文件后，怎么搜索？怎么退出？
5.mkdir -p 的 -p 是干嘛的？不加会怎样？
6.复制目录忘了 -r，会报错还是静默失败？
7.rm 删掉的文件能恢复吗？
8.mv x dir/ 和 mv x dir 在目录不存在时有什么区别？

## Day 2 (10/19)

### find 按名字查找
find . -type d -name "week*"  只找目录
find . -type f -name "*.md"  只找文件
*表示通配符

### grep 按内容查找
grep -rn "week" .
-r表示递归，从指定目录递归查找
-n搜索出来的内容显示行号

### head/tail 查看开头结尾
head -5 文件名  查看前5行
tail -5 文件名  查看后5行

tail -f 日志  实时跟踪文件新增内容

### wc 统计
wc -l commands.md  查看笔记有多少行

### which/whereis  查看文件在哪
which gcc      which只找可执行文件
whereis gcc    whereis找所有有关文件

### .&..&~
. 表示当前目录
.. 表示上一级目录
~ 表示家目录 /home/rem

### chmod 修改权限
三个动作 r w x
三类人：属主、所属组、其他人
chmod +x daily.sh
对于目录的x权限是指能否访问该目录，对于可执行文件是是否能执行

### ps 查看进程
ps aux 查看系统所有进程
ps aux | grep bash 配合grep查找特定进程

### top/htop 实时看进程状态
htop更好看  （按q退出）

### kill 终止进程
kill pid
kill -9 pid
kill是向进程发出信号请它退出，程序可以拒绝，kill -9是强制杀死进程

### man 查手册
man ls
man chmod
man 2 open
man 3 printf
man里面的操作和less一模一样（搜索、退出）

### 明天复习自测
1.find -name "*.md" 的引号去掉会怎样？
2.grep -r 和 grep -rn 差在哪？
3.tail -f 卡住了怎么办？
4.wc -l 统计的是行数还是字数？
5.-rwxr-xr-x 中，其他人有什么权限？
6.ps aux 里 PID 在第几列？
7.kill 和 kill -9 有什么不同？
8.man 2 open 里的 2 代表什么？
