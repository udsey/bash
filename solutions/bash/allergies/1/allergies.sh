#!/usr/bin/env bash
score=$1
check=""
result=""
if [[ $2 == "allergic_to" ]]; then
    check=$3
    result=false
fi

allergens=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")
values=(1 2 4 8 16 32 64 128)

if [[ $score -eq 0 ]]; then
    :
else
    for i in "${!allergens[@]}"; do
        allergen="${allergens[$i]}"
        value="${values[$i]}"
        if (( score & value )); then
            if [[ $check == "" ]]; then
                if [[ -n $result ]]; then
                    result+=" "
                fi
                result+="$allergen"
            elif [[ $check == $allergen ]]; then
                result=true
            fi
        fi
    done
fi

echo "$result"

                