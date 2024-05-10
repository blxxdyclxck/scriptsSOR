#!/bin/bash

echo "1. Mostrar el contenido"
echo "2. Mover"
echo "3. Copiar"
echo "4. Borrar"
echo "5. Salir"

read -p "Introduce el nombre del fichero: " fichero

if [ ! -f "$fichero" ]; then
    echo "El fichero '$fichero' no existe."
    exit 1
fi

read -p "Elija una opcion: " opcion

case Sopcion in
    1) cat "$fichero"
    ;;
    2) read -p "Introduce la nueva ubicación para mover el fichero: " ruta
       mv "$fichero" "$ruta"
       echo "El fichero ha sido movido a $ruta"
    ;;
    3) read -p "Introduce la ubicación para copiar el fichero: " rutaCopia
       cp "$fichero" "$rutaCopia"
       echo "El fichero ha sido copiado a $rutaCopia"
    ;;
    4) rm "$fichero"
       echo "El fichero ha sido borrado."
    ;;
    5) echo "Saliendo del programa."
       exit 0
    ;;   
    *) echo "Opción inválida."
    ;;
    

    

esac