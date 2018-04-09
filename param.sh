#!/bin/sh
echo "输出第一个参数:$0"
param="$*"
echo "以一个单字符串显示所有向脚本传递的参数:${param}"
echo "脚本运行的当前进程ID号:$$"
echo "后台运行的最后一个进程的ID号:$!"
echo "与$*相同，但是使用时加引号，并在引号中返回每个参数"$@""
echo "显示Shell使用的当前选项，与set命令功能相同。$-"
echo `expr index abcd cd`
echo "显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误$?"

for i in "$*"; do
    echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@"; do
    echo $i
done