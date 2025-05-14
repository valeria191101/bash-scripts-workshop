#!/bin/bash

echo "Introduce el nombre del archivo: "
read archivo

#Verificar si el archvio existe
if [[ ! -f "$archivo" ]]; then
	echo "El archivo no existe. Se creará uno nuevo."
	touch "$archivo"
else
	echo "El archivo ya existe."
fi

# Lee las palabras hasta que se escriba :>
echo "Escribe palabras para guardar al archivo (para terminar, escribe :>)"
read simbolo
while [[ "$simbolo" != ":>" ]]; do
	echo "$simbolo" >> "$archivo"
	read simbolo
done

echo "Archivo finalizado"

#Mostrar contenido del archivo
echo -e "\nContenido final del archivo '$archivo':"
cat "$archivo"
