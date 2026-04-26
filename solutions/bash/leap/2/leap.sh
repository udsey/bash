#!/usr/bin/env bash
year=$1
n_inputs=$#

if (( n_inputs != 1 )) || [[ ! $year =~ ^[0-9]+$ ]]; then
    echo "Usage: leap.sh <year>"
    exit 1
elif (( year % 4 == 0 )) && (( year % 100 != 0 )); then
    echo true
elif (( year % 4 == 0 )) && (( year % 100 == 0 )) && (( year % 400 == 0 )); then 
    echo true
else
    echo false
fi