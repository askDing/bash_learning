#! /bin/bash
# Description
#
# Usage:
# ./aa.sh <param 1> <param 2> <param 3>

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
