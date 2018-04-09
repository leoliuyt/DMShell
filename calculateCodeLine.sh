#!/bin/sh
echo "参数个数:$#"
echo "输入路径为：$1"
if [ $# -le 0 ]
then 
echo "要求输入路径"
exit 
fi

if !(test -d $1) 
then
echo "要求输入路径"
exit
fi

# 进入输入路径中
cd $1
#查找当前目录或者子目录下所有.m文件，但是跳过子目录Pods
array=$(find . -path "./Pods" -prune -o -name "*.m" -print)
totalLine=0
fileCount=0
echo -e "计算中……\n"
for file in ${array[@]}
do
# line "       34"
let "fileCount++"
fileLength=${#file}
line=$(wc -l < $file)
# 字符串转数字 $[]
lineCount=$[line]
totalLine=`expr $totalLine + ${lineCount}`
done

echo -e "文件总数:$fileCount \n 代码总行数为：$totalLine"
