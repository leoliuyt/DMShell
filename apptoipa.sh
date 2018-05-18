#!/bin/sh
#注意：脚本目录和xxx.app要在同一个目录，如果放到其他目录，请自行修改脚本。
#包名称(以.app为后缀名的包名称)
#这里请将双引号里面的名称改为你xxx.app的名称
App_Name=$1

#进入文件夹，如果你将xx.app包放在桌面AutoIPA文件里面，请将路径拖入下方
#cd /Users/P85755/Desktop/AutoIPA

# 先删除里面当前的IPAFolder文件夹
rm -rf IPAFolder
# 再创建IPAFolder文件夹
mkdir IPAFolder
# 在文件夹里面创建Payload文件夹
mkdir IPAFolder/Payload
# 将当前目录下的App_Name.app复制到Payload里面
cp -r $App_Name.app IPAFolder/Payload/$App_Name.app
# IPA包制作中可忽略iTunesArtwork这个图标，经过发现，可以不要这个图标，打包的时候只吧目录打进去即可
# cp Icon.png IPAFolder/iTunesArtwork
# 进入CEB文件夹
cd IPAFolder
# 压缩多个目录zip FileName.zip 目录1 目录2 目录3....
# zip -r $App_Name.ipa Payload iTunesArtwork
zip -r $App_Name.ipa Payload

exit 0
