#!/usr/bin/env bash
if [[ $# -eq 0 ]]; then
    printf "One for you, one for me."
else
    printf "One for %s, one for me." "$1"
fi
    