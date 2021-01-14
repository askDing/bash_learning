#! /bin/bash
#
# 判断linux 22端口开放情况
#
#
#
read -p "target file(eg:target.txt)" target
echo ${target}
while read ip; do
    (
	nc -w 1 $ip -z 22
	if [ $? -eq 0 ]; then
	    echo $ip 22 open >> port_22_status.txt
	    echo $ip 22 open
	fi
    )&

done < ${target}
wait

if [ $? -eq 0 ]; then
  echo "Scan succeed. output file is ./port_22_status.txt"
else
  echo "scan failed "
fi

