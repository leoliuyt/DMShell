#!/bin/sh
array_name=(
    "a"
    "b"
    "c"
)



array_name[0]="c"
array_name[1]="b"
array_name[2]="a"

array_name=(A B "C" D)
echo "======="

#遍历数组
for value in ${array_name[@]}
do
echo $value
done

#获取数组全部元素
echo ${array_name[@]}

#获取数组长度
length=${#array_name[@]}
echo "length=${length}"