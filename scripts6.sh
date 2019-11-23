#!/bin/sh

my_date=$(date)
echo $my_date
result=$(echo "$my_date" | sed "s/EET//")
echo $result
echo "$result" | awk '{split($0,a," "); print a[1],a[3],a[2],a[4],a[5]}'