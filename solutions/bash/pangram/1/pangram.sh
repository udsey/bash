#!/usr/bin/env bash
if [[ $( echo "$1" | tr [:upper:] [:lower:] | grep -o '[a-z]' | sort -u | wc -l) -eq 26 ]]; then
    echo true
else
    echo false
fi