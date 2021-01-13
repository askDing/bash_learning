#! /bin/bash
#
# 判断linux主机连通性和22端口开放情况
#
#
#
read -p "target file(eg:target.txt)" target
echo ${target}
while read ip; do
  nc -w 1 $ip -z 22
  if [ $? -eq 0 ]; then
      echo $ip is alive and 22 open >> info_of_ip.txt
      echo $ip is alive and 22 open 
      continue
    else
       (ping $ip -c2 &> /dev/null
      if [ $? -eq 0 ]; then
        echo $ip is alive but 22 close >> info_of_ip.txt
        echo $ip is alive but 22 close 
      fi
    )&
    wait
  fi
done < ${target}

if [ $? -eq 0 ]; then
  echo "Scan succeed. output file is ./info_of_ip.txt"
else
  echo "scan failed "
fi

