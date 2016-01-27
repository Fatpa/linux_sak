#!/bin/bash

users=`cat /etc/passwd | awk -F: '{ if($3>=500) print $1 }'`

for i in root $users
do
    echo $i
    crontab -l -u $i
done
