#!/bin/bash

# need to install the plugin fping
# set the ip that u want to check

ip='192.168.1.'

for i in `seq 1 254`
do 
    fping -A $ip$i
done