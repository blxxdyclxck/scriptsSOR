#! /bin/bash

if [[ "$1" =~ ^[0-9]+$ ]]; then
    if [ "$1" -gt 0 ]; then
        echo "$1 es un número natural."
    else
        echo "$1 no es un número natural."
    fi
else
    echo "$1 no es un número natural"
fi