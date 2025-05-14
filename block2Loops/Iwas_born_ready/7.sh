#!/bin/bash

echo "Bienvenido al juego piedra, papel y tijera"
echo
read -p "Elige una opción: piedra, papel o tijera: " juego

#Bucle del juego
while [[ "$juego" != "salir" ]]; do 
	#Validar entrada
	if [[ "$juego" != "piedra" && "$juego" != "papel" && "$juego" != "tijera" ]]; then
		read -p "Entrada no válida. Debe ser: piedra, papel o tijera: " juego
	else
		#Juego maquina
		num=$((RANDOM % 3))
		if [ "$num" -eq 0 ]; then
			opcion="piedra"
		elif [ "$num" -eq 1 ]; then
			opcion="papel"
		else
			opcion="tijera"
		fi
		echo "La máquina eligió: $opcion"
		
		if [[ "$juego" == "$opcion" ]]; then
			echo "Empate" 
		elif [[ ("$juego" == "piedra" && "$opcion" == "tijera") ||
			("$juego" == "papel" && "$opcion" == "piedra") ||
			("$juego" == "tijera" && "$opcion" == "papel") ]]; then
			echo "¡Ganaste!"
		else
			echo "Perdiste."
		fi
	fi
	#Pedir siguiente ronda
	read -p "Elige una opción: piedra, papel o tijera: " juego
done
echo "¡Gracias por jugar!"
