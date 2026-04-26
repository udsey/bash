#!/usr/bin/env bash
command=$1
n=$2


square_of_sum=0
sum_of_squares=0

for i in $(seq "$n")
do
    square_of_sum=$(( square_of_sum + i ))
    sum_of_squares=$(( sum_of_squares + i**2 ))
done

square_of_sum=$(( square_of_sum**2 ))
if [[ $command == "sum_of_squares" ]]; then
    echo $sum_of_squares
elif [[ $command == "square_of_sum" ]]; then
    echo $square_of_sum
else
    diff=$(( square_of_sum - sum_of_squares ))
    echo $diff
fi