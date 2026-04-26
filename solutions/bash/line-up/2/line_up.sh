#!/usr/bin/env bash
name=$1
num=$2

if [[ ${num: -1}  -eq 1 ]] && [[ ${num: -2} -ne 11 ]]; then
    end="st"
elif [[ ${num: -1}  -eq 2 ]] && [[ ${num: -2} -ne 12 ]]; then 
    end="nd"
elif [[ ${num: -1}  -eq 3 ]] && [[ ${num: -2} -ne 13 ]]; then 
    end="rd"
else
    end="th"
fi

printf "%s, you are the %s%s customer we serve today. Thank you!" "$name" "$num" "$end"