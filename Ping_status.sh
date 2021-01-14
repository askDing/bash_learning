#! /bin/bash
#
# 判断linux主机连通性
#
#
#
read -p "target file(eg:target.txt)" target
echo ${target}
while read ip; do
    (
	ping $ip -c2 &> /dev/null
	if [ $? -eq 0 ]; then
            echo $ip is alive  >> ip_status.txt
            echo $ip is alive  
	fi
    )&

done < ${target}
wait

if [ $? -eq 0 ]; then
  echo "Scan succeed. output file is ./ip_status.txt"
else
  echo "scan failed "
fi

