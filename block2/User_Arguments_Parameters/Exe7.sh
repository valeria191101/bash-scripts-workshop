#!/bin/bash

echo "Argumentos recibidos:"

for arg in "$@"; do
	echo "$arg" 
done

echo "Se han recibido $# argumento(s)."
