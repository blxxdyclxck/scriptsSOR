#!/bin/bash

echo "1. Crear usuario"
echo "2. Borrar usuario"
echo "3. Listar usuarios /etc/passwd"
echo "4. Salir"

read -p "Elija una opción: " opcion

case $opcion in
    1) read -p "Introduce el nombre de usuario a crear: " usuarioNuevo
       sudo adduser "$usuarioNuevo"
    ;;
    2) read -p "Introduce el nombre de usuario a borrar: " eliminar
       sudo deluser "$eliminar"
    ;;
    3) cut -d: -f1 /etc/passwd
    ;;
    4) echo "Saliendo del programa."
       exit 0
    ;;
    *) echo "Opción inválida."
    ;;
esac
