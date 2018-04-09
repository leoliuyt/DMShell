#!/bin/sh
string="   12  "
#四种纯数字字符串转数字的方式

number=$[string]
# number=$((string))
# number=`expr $string`
# let number="string"
echo -e "number=$number\n"
echo -e "string=$string\n"
