#!/bin/bash

echo -n "Introduce un número entero: "
read numero

if [ "$numero" -lt 0 ]; then
	echo "El número $numero es negativo"
else
	echo "El número $numero no es negativo"
fi
