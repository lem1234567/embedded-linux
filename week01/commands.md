# Week 1 · Linux 命令练习

## Day 1（10/19）

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
