#!/bin/bash
#a)Comprobar que se han pasado 3 parámetros

if [ $# -ne 3 ]; then
	echo "Error: Debes pasar 3 parámetros."
	exit 1
fi

operacion=$1
num1=$2
num2=$3

#b) Verificar que los dos últimos son enteros válidos
if ! [[ $num1 =~ ^-?[0-9]+$ ]]; then
	echo "Error: '$num1' no es un número entero válido."
	exit 1
fi

if ! [[ $num2 =~ ^-?[0-9]+$ ]]; then
	echo "Error: '$num2' no es un número entero válido."
	exit 1
fi

#c) Verificar que la operación sea una de las permitidas
if [[ "$operacion" != "add" && "$operacion" != "subtract" && "$operacion" != "multiply" && "$operacion" != "divide" ]]; then
	echo "Error: Operación inválida. Debe ser: add, subtract, multiply o divide. "
	exit 1
fi

#d) Verificar división por cero
if [[ "$operacion" == "divide" && "$num2" -eq 0 ]]; then
	echo "Error: No se puede dividir por cero."
	exit 1
fi

#e) Ejecutable la operación
if [[ "$operacion" == "add" ]]; then
	resultado=$((num1 + num2))
elif [[ "$operacion" == "subtract" ]]; then
        resultado=$((num1 - num2))
elif [[ "$operacion" == "multiply" ]]; then
        resultado=$((num1 * num2))
elif [[ "$operacion" == "divide" ]]; then
        resultado=$((num1 / num2))
fi

echo "Resultado: $resultado"
