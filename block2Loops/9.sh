#!/bin/bash
echo
echo "======MENÚ======="
echo "1) Mostrar fecha y hora actual"
echo "2) Comprobar si un archivo existe"
echo "3) Salir"
echo -n "Elige una opción: "
read opcion
echo
while [[ "$opcion" != "3" ]]; do
	if [[ "$opcion" == "1" ]]; then
		date
	elif [[ "$opcion" == "2" ]]; then
		echo -n "Introduce el nombre del archivo o ruta: "
		read archivo
		if [[ -e "$archivo" ]]; then
			echo "El archivo '$archivo' si existe."
		else
			echo "El archivo '$archivo' no existe."
		fi
	else
		echo "Opción inválida. Solo elige del 1 al 3."
	fi
	echo
	echo "======MENÚ======="
	echo "1) Mostrar fecha y hora actual"
	echo "2) Comprobar si un archivo existe"
	echo "3) Salir"
	echo -n "Elige una opción: "
	read opcion
	echo
done
echo "Adiós"
