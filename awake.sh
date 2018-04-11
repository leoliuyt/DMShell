#!/bin/sh
day=$(date +"%u")
if [ $day -eq 7 ]
then

say 你好，欢迎登录
email_date=$(date "+%Y-%m-%d_%H:%M:%S")  
email_body="周天有人在${email_date} 唤醒了你的电脑"
email_subject="入侵警告!!!"
email_to="liubaoqiu@meishubao.com"
echo $email_body | mail -s $email_subject $email_to

if [ $? == 0 ]
then 
user=$(whoami)
echo -e "邮件发送成功\n $email_body $email_to $user" > ~/Documents/Code/LL_Workspace/DMShell/log.txt
# ls > /Users/lbq/Documents/Code/LL_Workspace/DMShell/1aa.txt
else 
echo -e "发送失败\n" > ~/Documents/Code/LL_Workspace/DMShell/log.txt
fi

else 
echo -e "今天不是周天\n" > ~/Documents/Code/LL_Workspace/DMShell/log.txt
fi