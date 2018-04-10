#!/bin/sh
say 你好
day=$(date +"%u")
if [ $day -eq 2 ]
then

sleep 10    
say 你好，用户
email_date=$(date "+%Y-%m-%d_%H:%M:%S")  
email_body="周天有人在${email_date} 登陆了你的电脑"
email_subject="入侵警告!!!"
email_to="liubaoqiu@meishubao.com"
echo "leoliu1033" | (sudo echo $email_body | mail -s $email_subject $email_to) 

if [ $? == 0 ]
then 
user=$(whoami)
echo -e "邮件发送成功\n $email_body $email_to $user" > ~/Documents/Code/LL_Workspace/DMShell/1aa.txt
# ls > /Users/lbq/Documents/Code/LL_Workspace/DMShell/1aa.txt
else 
echo -e "发送失败\n" > ~/Documents/Code/LL_Workspace/DMShell/1aa.txt
fi

else 
echo -e "失败\n" > ~/Documents/Code/LL_Workspace/DMShell/1aa.txt
fi