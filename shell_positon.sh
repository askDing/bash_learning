#! /bin/bash
# 练习shell中的特殊内部参数


echo "Hello,$USER, the output of this script are as follows:"
echo -e "The script name is              : \t $(basename $0)"
echo -e "The first param of the script is: \t $1"
echo -e "The second param of the script is: \t $2"
echo -e "The five param of the script is: \t $5"
echo -e "All the params you input are: \t $@"
echo -e "The PID of this script is: \t $$"
echo -e "The exit status of this script is: \t $?"



