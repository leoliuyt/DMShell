#!/bin/bash
your_name="leoliu"
greeting="hello,"$your_name" !"
greeting1="hello,${your_name} !"
echo $greeting $greeting1

#获取字符串长度
string="abcd"
echo ${#string} #4

#提取子字符串
string="abcdefg"
echo ${string:1:4} #bcde

#查找子字符串
string="abcdefgis"
echo "==========="
echo `expr index "$string" is`



