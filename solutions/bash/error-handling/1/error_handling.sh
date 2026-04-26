#!/usr/bin/env bash
if [[ $# -eq 0 ]] || [[ $# -gt 1 ]]; then
    echo "Usage: error_handling.sh <person>"
    exit 1
else
    printf "Hello, %s" "$1"
fi