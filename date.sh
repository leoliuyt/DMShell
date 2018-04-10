#!/bin/sh
day=$(date +"%u")
if [ $day -eq 2 ]
then
# echo "Good Day"
# mail -s "" liubaoqiu@meishubao.com 
# email_body=
email_date=$(date "+%Y-%m-%d_%H:%M:%S")  
email_body="周天有人在${email_date} 登陆了你的电脑"
email_subject="入侵警告!!!"
email_to="liubaoqiu@meishubao.com"
echo $email_body | mail -s $email_subject $email_to 
echo "邮件发送成功" > /Users/lbq/Documents/Code/LL_Workspace/DMShell/1aa.txt
# ls > /Users/lbq/Documents/Code/LL_Workspace/DMShell/1aa.txt
fi
