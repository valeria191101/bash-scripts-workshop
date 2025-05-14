#!/bin/bash

#1. Verificar si se ha pasado 1 parámetro
if [ $# -ne 1 ]; then
	echo "Error"
	echo "Uso: $0 ruta"
	exit 1
fi

archivo="$1"

#2. Verificar si el archivo existe
if [ ! -e "$archivo" ]; then
	echo "Error: El archivo '$archivo'no existe."
	exit 1
fi

#3.a Obtener el tipo de archivo usando file
tipo=$(file --brief --mime-type "$archivo")

if [[ "$tipo" == text/* ]]; then
	echo  "Tipo de archivo: Texto"
elif [[ "tipo" == application/octet-stream ]]; then
	echo "Tipo de archivo: Binario."
else
	echo "Tipo de archivo: Desconocido ($tipo)" 
fi

#3.b Comprobar permisos del archivo
[ -r "$archivo" ] && echo "El archivo es legible"
[ -w "$archivo" ] && echo "El archivo es modificable"
[ -x "$archivo" ] && echo "El archivo es ejecutable"
