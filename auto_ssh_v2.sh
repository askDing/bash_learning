#!/usr/bin/expect -f 
#
# ./auto_ssh_v2.sh  <username>  <password>  <ssh_server>
#
set USER [lindex $argv 0]
set PASSWORD [lindex $argv 1]
set IP [lindex $argv 2]
set timeout 30   

spawn ssh $USER@$IP    

expect {              
  "*yes/no" {send "yes\n"; exp_continue}  
  "*password:" {send "$PASSWORD\n"}      
}
interact  
