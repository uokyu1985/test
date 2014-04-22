#!/bin/bash

USER=user
PASS=pass
HOST=192.168.0.1

expect -c "
set timeout -1
spawn ssh $USER@$HOST
expect \"$USER@$HOST's password:\"
send \"$PASS\n\"
expect \"\[$username@$hostname ~\]$\"
send \"ls\n\"
interact