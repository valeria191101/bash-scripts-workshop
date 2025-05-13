#!/bin/bash
#Contadores
positivo=0
negativo=0
zero=0
invalido=0

#Recorrer parámetros
for num in "$@"; do
	#Validar número (positivo o negativo)
	if [[ "$num" =~ ^-?[0-9]+$ ]]; then
		if (( num > 0 )); then
			((positivo++))
		elif (( num < 0 )); then
			((negativo++))
		else
			((zero++))
		fi
	else
		echo "Parámetros inválido ignorado: '$num'"
		((invalido++))
	fi
done

#Resultados
echo "Positivos: $positivo"
echo "Negativos: $negativo"
echo "Iguales a zero: $zero"
echo "Inválido: $invalido"
