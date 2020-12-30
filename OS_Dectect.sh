#! /bin/bash
# 这是探测系统平台的脚本

if type wevtutil &> /dev/null  # Windows事件命令行实用程序
then
  OS=MSWin
elif type scutil &> /dev/null  #macOS中管理系统配置参数命令
then
  OS=macOS
else
  OS=Linux
fi
echo $OS
