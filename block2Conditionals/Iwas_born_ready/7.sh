#!/bin/bash

#Comprobar si se ha pasado un parámetro
if [ $# -ne 1 ]; then
	echo "Error: Debes proporcionar la ruta de un archivo"
	exit 1
fi

archivo=$1

if [ ! -e "$archivo" ]; then
	echo "Error: El archivo no existe."
	exit 1
fi

echo "Permisos para '$archivo': "

if [ -r "$archivo" ]; then
	echo " - Lectura (Read)"
fi

if [ -w "$archivo" ]; then
	echo " - Escritura (Write)"
fi

if [ -x "$archivo" ]; then
	echo " - Ejecución (Execute)"
fi
