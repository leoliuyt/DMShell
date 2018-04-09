#!/bin/sh
a=10
b=20

# if else-if else
if [ $a == $b ]
then
echo "a 等于 b"
elif [ $a -gt $b ]
then
echo "a 大于 b"
else
echo "a 小于 b"
fi

#for 循环

array_name=(A B C D)
for name in ${array_name[@]}
do 
echo "name:$name"
done

# while

int=1
while(( $int <= 5 ))
do
echo $int
let "int++"
done

echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read input
do
    echo "是的！$input 是一个好网站"
done