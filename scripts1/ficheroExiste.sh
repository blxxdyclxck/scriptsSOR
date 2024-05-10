#!/bin/bash

if [ -e "$1" ]; then
    echo "El archivo '$1' existe en el sistema."
else
    echo "El archivo '$1' no existe en el sistema."
fi
