#!/usr/bin/env bash
sequence=$1
span=$2
max_prod=0
n=${#sequence}

if (( span > n )); then
    echo "span must not exceed string length"
    exit 1
elif [[ ! $sequence =~ ^[0-9]+$ ]]; then
    echo "input must only contain digits"
    exit 1
elif (( span < 0 )); then
    echo "span must not be negative"
    exit 1
fi
    


for i in $(seq 0 $((n-span))); do
    num=${sequence:$i:$span}
    prod=1
    for (( j=0; j<span; j++ )); do
        prod=$(( prod * ${num:$j:1} ))
    done                                  
    if (( prod > max_prod )); then
        max_prod=$prod
    fi
done

echo $max_prod