#! /bin/bash
# dialog 需要安装

name='cat name'

while [ "$name" != "cosmos"] ; do
  dialog --inputbox "Please input username" 40 80 2 >name
  name=`cat name`
done

dialog --msgbox "Welcome to sutdent Information System" 10 20 

while [ : ] 
do
  dialog --menu "Choose your operatin:" 10 80 3 1 "Add Student info" 2 Delete Student info 3 "Modify Student info" 4 exit 2> menu.txt
  menu=`cat menu.txt`
  dialog --msgbox "Your choose is $menu" 10 20

  if [ $menu -eq 4 ]; then
    exit 0
  fi
done
