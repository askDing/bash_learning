#! /bin/bash
#
#Author:askDing

for ip in 192.168.108.{1..255}; do
  (
    ping $ip -c2 &> /dev/null
    if [ $? -eq 0 ]; then
      echo $ip is alive
    fi

)&
done

wait
