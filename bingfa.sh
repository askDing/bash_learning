#!/bin/bash

thread=10                                 # 定义进程数
start_time=`date +%s`                       

[ -e /tmp/$$.fifo ] || mkfifo /tmp/$$.fifo # 创建命名管道文件

exec 3<> /tmp/$$fifo                      # 创建FD 3，以可读（<）可写（>）的方式关联管道文件，FD 3具有命名管道的特性
rm -rf /tmp/$$fifo                        # 删除命名管道文件，通过FD 3

for i in $(seq $thread); do
    echo >&3                              # 循环$thread次向FD 3写入\n , 类比一个令牌 
done

for i in $(seq 1000); do
    read -u 3                             # 循环读取FD 3中取\n , 直到读取位置
    {
	# 需要并行执行的命令放在此处
	sleep 1 && echo "$i  Done"

	# 最后需要归还令牌
	echo >&3                          # 再次向FD 3写入\n , 类似归还令牌
    }&                                    # 并发执行标志{}&，fork放在后台执行
done
wait                                      # 等待并发进程执行完毕，执行后续命令 

stop_time=`date +%s`

echo "TIME: `expr $stop_time-$start_time`"        

exec 3<&-                                 # 关闭FD 3的读
exec 3>&-                                 # 关闭FD 3的写
