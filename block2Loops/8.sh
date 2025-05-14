#!/bin/bash

#Verificación de contraseña

validar=false

while [[ "$validar" != true ]]; do
	read -s -p "Introduce una contraseña: " contra
	echo

	#Comprobación

	if [[ ${#contra} -lt 8 ]]; then
		echo "La contraseña debe tener al menos 8 caracteres."
	elif [[ ! "$contra" =~ [A-Z] ]]; then
		echo "LA contraseña debe tener una letra en mayúscula"
	elif [[ ! "$contra" =~ [0-9] ]]; then
		echo "La contraseña debe tener al menos un dígito."
	else
		validar=true
		echo "Conraseña válidar."
	fi
done
