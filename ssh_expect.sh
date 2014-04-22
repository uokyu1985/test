#!/bin/bash

USER=kyue
PASS=uokyu1985
HOST=192.168.0.17

expect -c "
set timeout -1
spawn ssh $USER@$HOST
expect \"$USER@$HOST's password:\"
send \"$PASS\n\"
expect \"\[$username@$hostname ~\]$\"
send \"ls\n\"
interact