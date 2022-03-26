#!/bin/bash
echo "********************小智温馨提示**********************"
echo "专用aab转apks文件并安装到手机上脚本，开发不易，请到“https://github.com/18722650553/Android-studio-plugins”点赞呦！"
echo "保持手机启动开发者模式，并保持和电脑连接呦！"
echo "*****************************************************"

AAB_NAME="xxx.aab"
APKS_NAME="xxx.apks"
BUNDLE_JAR="bundletool-all-x.x.x.jar"
KS_STORE="xxx.jks"
KEY_ALIAS="xxx"
KS_PASS="xxx"
KEY_PASS="xxx"
 
currentDir=$(pwd)
 
echo "小智温馨提示 ---> 移除之前生成的apks啦！"
rm -f "$currentDir/$APKS_NAME"
 
echo "小智温馨提示 ---> 准备生成连接设备的apks啦！"
java -jar "$currentDir/$BUNDLE_JAR" build-apks --connected-device --bundle="$currentDir/$AAB_NAME" --output="$currentDir/$APKS_NAME" --ks="$currentDir/$KS_STORE" --ks-pass=pass:$KS_PASS --ks-key-alias=$KEY_ALIAS --key-pass=pass:$KEY_PASS
 
echo "小智温馨提示 ---> 准备安装apks，赶快去您的手机查看吧！"
java -jar "$currentDir/$BUNDLE_JAR" install-apks --apks="$currentDir/$APKS_NAME"
