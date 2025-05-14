#!/bin/bash
#Pedir ruta del directorio
echo "Introduce una ruta de directorio: "
read directorio

#Bucle until: se repite mientras no sea un directorio válido
until [ -d "$directorio" ]; do
	echo "'$directorio' no es un directorio válido. Intentalo de nuevo: "
	read directorio
done

#MOstrar permisos del directorio
echo -e "\n Permisos del directorio: "
ls -ld "$directorio" | awk '{print $1,$3,$4}'

#Contar archivos y subdirectorios
contar_archivos=$(find "$directorio" -mindepth 1 -maxdepth 1 -type f | wc -l)
contar_directorio=$(find "$directorio" -mindepth 1 -maxdepth 1 -type d | wc -l)

echo -e "\n Contenido: " 
echo "Archivos: $contar_archivos"
echo "Subdirectorios: $contador_directorio"

#Listar nombre de archivos y carpetas
echo -e "\n Archivos y carpetas dentro de '$directorio':"
ls -l "$directorio"
