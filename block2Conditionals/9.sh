#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Uso: $0 <directorio> <archivo.tar.gz>"
	exit 1
fi

directorio=$1
archivo=$2

#a) Verificar si el directorio existe y es un directorio
if [ ! -d "$directorio" ]; then
	echo "Error: '$directorio' no existe o no es un directorio."
	exit 1
fi

#b) Verificar si el archivo de salida ya existe
if [ -f "$archivo" ]; then
	echo "El archivo '$archivo' ya existe. ¿Deseas sobrescribirlo? (s/n)"
	read respuesta
	if [ "$respuesta" != "s" ]; then
		echo "Operación cancelada" 
		exit 0
	fi
fi

#Comprimir
tar -czf "$archivo" "$directorio"

if [ $? -eq 0 ]; then
	echo "Directorio comprimido con éxito en '$archivo'"
else
	echo "Error al comprimir el directorio."
fi
