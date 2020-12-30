#!/usr/bin/expect
set timeout 30
set server "  "


set user "root"
set password "test123"

spawn ssh $user@$server
expect "*password*" {send "$password\n"}
interact



