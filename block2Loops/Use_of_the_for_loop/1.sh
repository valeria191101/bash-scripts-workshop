#!/bin/bash

echo "Nombre del archivo: "
read archivo

# Verificar que el archivo exista
if [[ ! -f "$archivo" ]]; then
	echo "El archivo no existe."
	exit 1
fi

#Archivo limpio
archivo_limpio="limpio_$archivo"
> "$archivo_limpio" #vacía el archivo si ya existe

#Utilizamos el bucle para eliminar los comentarios
separador=$'\n'
for linea in $(cat "$archivo"); do
	#Ignora líneas que empiezan con #
	if [[ ! "$linea" =~ ^[[:spacio:]]*
		echo "liena" >> "$archivo_limpio"
	fi
done

echo "Comentarios eliminados. Archivo limpio: $archivo_limpio"

echo "Introduce una palabra o frase: "
read buscador

if grep -q "$buscador" "$archivo_limpio"; then
	echo "La palabra o frase '$buscador' sí existe en el archivo."
else
	echo "La palabra o frase '$buscador' no existe en el archivo."
fi

echo "Introduce una frase para añadirla al archivo: "
read añadido

echo "$añadido" >> "$archivo_limpio"
echo "Frase añadida correctamente."

echo -e "\nContenido final del archivo: "
cat "$archivo_limpio"
