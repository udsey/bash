#!/usr/bin/env bash
subjects=(
    "the house"
    "the malt"
    "the rat"
    "the cat"
    "the dog"
    "the cow with the crumpled horn"
    "the maiden all forlorn"
    "the man all tattered and torn"
    "the priest all shaven and shorn"
    "the rooster that crowed in the morn"
    "the farmer sowing his corn"
    "the horse and the hound and the horn"
)

actions=(
    "Jack built"
    "lay in"
    "ate"
    "killed"
    "worried"
    "tossed"
    "milked"
    "kissed"
    "married"
    "woke"
    "kept"
    "belonged to"
)
start=$1
end=$2
n=${#subjects[@]}
prev=""
text=""

if [[ $start -eq 0 ]] || [[ $start -gt $end ]] || [[ $end -gt $n ]]; then
    echo "invalid"
    exit 1
fi
    

for (( i=1; i<=n; i++ ));
do
    if  [[ $i -eq 1 ]]; then
        line="${subjects[i-1]}"" that ""${actions[i-1]}"
		full="This is ""$line""."
        prev="$line"
    else
        line="${subjects[i-1]}"$'\n'"that ${actions[i-1]}" 
    	full="This is ""$line"" ""$prev""."
        prev="$line"" ""$prev"
    fi

    if [[ $i -ge $start ]] && [[ $i -le $end ]]; then
        echo "$full"
        if [[ $i -ne $end ]]; then
        	echo
        fi
    fi
    
done