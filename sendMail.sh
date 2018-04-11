#!/bin/bash

# 方式一
# mail -s "my first email from shell " leoliuyt@sina.cn << TAG
# 邮件内容:
# 您好
# TAG

# 方式二
from="1033805687@qq.com"  
to="liubaoqiu@meishubao.com"
#抄送
cc="leoliuyt@sina.cn"

email_content="您好，这是一封有qq发送到meishubao的邮件"  
email_subject="测试邮件"  

# To和From的顺序不能换 交换后就会有local发送邮件
echo "To: ${to}" > mail.txt
echo "From: ${from}" >> mail.txt
echo "Cc: ${cc}" >> mail.txt
echo "Subject: ${email_subject}" >> mail.txt
echo "${email_content}" >> mail.txt
cat mail.txt | /usr/sbin/sendmail -t