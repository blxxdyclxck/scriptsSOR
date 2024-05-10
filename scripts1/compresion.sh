#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Por favor, proporciona dos parametros"
    exit 1
fi

if [ "$1" = "-c" ]; then
    tar -czvf "$2.tar.gz" "$2"
    echo "$2 ha sido comprimido como $2.tar.gz"
elif [ "$1" = "-d" ]; then
if [ "${2: -7}" != ".tar.gz" ]; then
    echo "El archivo proporcionado no tiene la extensión .tar.gz"
    exit 1
fi
    tar -xzvf "$2"
    echo "El archivo $2 ha sido descomprimido"
else
    echo "Opción inválida."
    exit 1

fi