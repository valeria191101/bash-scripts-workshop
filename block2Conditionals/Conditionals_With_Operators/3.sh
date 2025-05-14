#!/bin/bash

echo -n "Introduce un número entero: "
read numero

if [ "$numero" = 0 ]; then
	echo "El número és cero"
else
	echo "El número $numero no és cero"
fi
