#!/bin/bash

for ip in $(seq 100 155); do
ping -c 1 10.10.10.$ip |grep "bytes from" |cut -d" " -f 4|cut -d":" -f1 &
done
