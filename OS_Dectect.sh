#! /bin/bash
# 这是探测系统平台的脚本

if type wevtutil &> /dev/null
then
  OS=MSWin
elif type scutil &> /dev/null
then
  OS=macOS
else
  OS=Linux
fi
echo $OS
