#!/usr/bin/env bash
a=$1
b=$2

if [[ $# -le 1 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
elif [[ ${#a} -ne ${#b} ]]; then
    echo "strands must be of equal length"
    exit 1
fi 

n=${#a}
dist=0

for i in $(seq 0 $((n-1)))
do
    if [[ "${a:$i:1}" != "${b:$i:1}" ]]; then
        (( dist++ ))
    fi
done

echo $dist
    
