#!/usr/bin/env bash
n_drops=$1
result=''

if (( n_drops % 3 == 0 )); then result+="Pling"; fi
if (( n_drops % 5 == 0 )); then result+="Plang"; fi
if (( n_drops % 7 == 0 )); then result+="Plong"; fi

if [[ -z $result ]]; then
    echo "$n_drops"
else
    echo "$result"
fi