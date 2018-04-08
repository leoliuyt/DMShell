#!/bin/bash
echo "my first shell"
#变量 定义 = 前后不能有空格
your_name="leoliu"
#变量 使用 $
echo $your_name

# for file in `ls /etc`
for file in $(ls /etc)
do
echo $file
done

for skill in Ada Coffe Action Java; 
do
    echo "I am good at ${skill}Script"
done


echo "==============="

myUrl="http://www.w3cschool.cc"
readonly myUrl

unset your_name
echo $your_name
