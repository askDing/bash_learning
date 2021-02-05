#! /bin/zsh -f
# Date: Tue Jan 19 15:59:35 CST 2021
# Author: askDing
# Blog: https://askding.github.io
#
# Version: 1.1
# Description:

cat <<EOF
*************************************************************************************
功能与使用说明:

*************************************************************************************
EOF

# upload this shell script to victim server




#


server_ip=$(ifconfig -a | grep -w inet | grep -v 127.0.0.1 | awk 'NR==1{print $2}')
date=$(date +%Y%m%d)
echo $date
echo $server_ip


