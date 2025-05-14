#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: Debes proporcionar una ruta"
	exit 1
fi

ruta=$1

if [ -d "$ruta" ]; then
	echo "'$ruta' es un directorio"
elif [ -f "$ruta" ]; then
	echo "'$ruta' es un archivo"
	
	#Obtener la extensión (si tiene punto)
	nombre=$(basename -- "$ruta")
	if [[ "$nombre" == *.* ]]; then
		extension="${nombre##*.}"
		echo "Extensión del archivo: .$extension"
	else
		echo "El archivo no tiene extensión."
	fi
else
	echo "La ruta no existe."
	exit 1
fi
