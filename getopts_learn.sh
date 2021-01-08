#! /bin/bash
#
# getopts命令学习

Usage()
{
  echo "Usage:"
  echo "getopts_learn.sh [-s S_DIR] [-d D_DIR]"
  echo "Description:"
  echo "S_DIR, the path of source."
  echo "D_DIR, the path of destination."
  exit 1
}

upload="false"

while getopts 'hs:d:u' OPT; do
  case $OPT in
    s) S_DIR="$OPTARG";;
    d) D_DIR="$OPTARG";;
    u) upload="true";;
    h) Usage;;
    ?) Usage;;
  esac
done

echo "Source DIR:$S_DIR"
echo "Destination DIR : $D_DIR"
echo "upload flag :$upload"
