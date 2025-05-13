#!/bin/bash
#Inicializar contador y array
contador=0
numeros=()

#Función para comprobar si es un número entero
numero_entero() {
	[[ "$1" =~ ^-?[0-9]+$ ]]
}

#UNTIL: hasta tener 3 números válidos
until [ "$contador" -eq 3 ]; do
	echo "Introduce un número entero ($((contador + 1))/3):"
	read input
	
	if numero_entero "$input"; then
		numeros+=("$input")
		((contador++))
	else
		echo "'$input' no es un número entero válido"
	fi
done
#Operaciones
a=${numeros[0]}
b=${numeros[1]}
c=${numeros[2]}

suma=$((a + b + c))
producto=$((a * b * c))

#Determinar mayor y menor
max=$a
min=$a

for num in "${numbers[@]}"; do
	(( num > max )) && max=$num
	(( num < min )) && min=$num
done

#Mostrar resultados
echo -e "\n Resultados:"
echo "Suma: $suma"
echo "Producto: $producto"
echo "Valor mayor: $max"
echo "Valor menor: $min"
