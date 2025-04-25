#!/bin/bash

echo "Comparación entre \$* y \$@ con y sin comillas:"
echo

echo "Sin comillas:"
echo "\$*: $*"
echo "\$@: $@"
echo

echo "Con comillas:"
echo '"$*" (todos los argumentos como una sola cadena):'
for arg in "$*"; do
	echo "$arg"
done
echo

echo '"$@" (cada argumento por separado):'
for arg in "$@"; do
	echo "$arg"
done
