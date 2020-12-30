#!/bin/bash
# scan port 21,22,25,53,81,137,139,143,161,162,389,445,512,513,514,61616,8161,873,1080,1433,1521,2181,2375,3306,3389,5000,5432,6379,7001,7002,8069,10050,8161,8000,8080,8089,8083,8086,9000,9090,9200,9300,11211,27017,27018,28017,50000,8088,50060,50070

echo "Usage:  sudo ./port_scan.sh"

read -p "扫描的地址段(eg: 192.168.1.1/24): " target
read -p "扫描报告保存路径和名称(eg: /path/to/name): " report_name

sudo nmap -Pn -T5 -sSUV -nvv -A --open -p `cat port | xargs | tr ' ' ','` $target  -oA $report_name-`date "+%Y-%m-%d"`

