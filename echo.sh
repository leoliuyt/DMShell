#!/bin/sh
echo -e "OK! \n" # -e 开启转义
echo "It it a test"

echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"

echo `date`