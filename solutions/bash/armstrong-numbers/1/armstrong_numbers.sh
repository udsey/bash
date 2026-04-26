#!/usr/bin/env bash
number=$1
n_digits=${#number}
digits_sum=0

for (( i=0; i<$n_digits; i++)); do
    digit="${number:$i:1}"
    digits_sum=$(( digits_sum + digit**n_digits))
done

if [[ $number == $digits_sum ]]; then
    echo true
else
    echo false
fi
