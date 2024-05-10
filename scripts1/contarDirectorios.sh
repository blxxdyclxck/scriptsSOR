#!/bin/bash

if [ ! -d "$1" ]; then
    echo "El directorio '$1' no existe."
    exit 1
fi

ficheros=$(find "$1" -type f | wc -l)
directorios=$(find "$1" -type d | wc -l)
echo "Número de archivos ordinarios en '$1': $ficheros"
echo "Número de directorios en '$1': $directorios"