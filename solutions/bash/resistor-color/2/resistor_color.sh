#!/usr/bin/env bash
colors=('black' 'brown' 'red' 'orange' 'yellow' 'green' 'blue' 'violet' 'grey' 'white')
if [[ $1 == "colors" ]]; then
    for color in "${colors[@]}"; do
        echo "$color"
    done
else
    color=$2
    for i in "${!colors[@]}"; do
        if [[ "$color" == "${colors[$i]}" ]]; then
            echo "$i"
            break
        fi
    done
fi
        
    