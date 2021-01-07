#! /bin/bash
# 统计Linux进程相关数量信息
# 请以root用户运行
# Author askDin

#使用root身份运行脚本
if [ $UID -ne 0 ]; then
  echo "Please run this script with root :)"
  exit 0
fi

running=0
sleeping=0
stoped=0
zombie=0

# 在proc目录下所有以数字开始的都是当前计算机正在运行的进程的进程PID
# 每个PID编号的目录下记录有该进程的相关信息
for pid in /proc/[1-9]* ; do
  procs=$[pid+1]

  # 每个PID目录下都有一个stat文件，该文件的第3列是该进程的状态信息
  stat=$(awk '{print $3}' $pid/stat)
  case $stat in
    R)
      running=$[running+1]
      ;;
    T)
      stoped=$[stoped+1]
      ;;
    S)
      sleeping=$[sleeping+1]
      ;;
    Z)
      zombie=$[zombie+1]
      ;;
  esac
done

echo "进程统计信息如下:"
echo "总进程数: $procs"
echo "Running 进程数: $running"
echo "Stoped进程数: $stoped"
echo "Sleeping进程数: $sleeping"
echo "Zombie进程数: $zombie"
