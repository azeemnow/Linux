#! /bin/bash

for ip in $(seq 1 100); do 
ping -c 1  10.0.0.$ip | grep "bytes from" |cut -d" " -f 4|cut -d":" -f1 &
done
