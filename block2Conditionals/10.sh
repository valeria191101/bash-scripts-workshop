#!/bin/bash

#a) Comprobar que se han pasado exactamente 2 parámetros
if [ $# -ne 2 ]; then
	echo "Error: Se requieren 2"
	exit 1
fi

archivo=$1
protocolo=$2

#a) Verificar si el archivo existe
if [ ! -f "$archivo" ]; then
	echo "Error: El archivo '$archivo' no existe."
	exit 1
fi

#a) Verificar la extensión del archivo (.txt o .csv)
if [[ "$archivo" != *.txt && "$archivo" != *.csv ]]; then
	echo "Error: El archivo debe tener extensión .txt o.csv"
	exit 1
fi

#b) Buscar el protocolo ignorando mayúsculas/minúsculas
coincidencias=$(grep -i "$protocolo" "$archivo" | wc -l)

if [ "$coincidencias" -eq 0 ]; then
	echo "No se econtraron líneas que contengan el protocolo '$protocolo'."
else
	echo "Se encontraron $coincidencias líneas que contienen el protocolo '$protocolo'."
fi
