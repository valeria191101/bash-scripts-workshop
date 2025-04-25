#!/bin/bash

echo "Argumentos introducidos: "

for arg in "$@"; do
	echo "$arg"
done

echo "Número total de argumentos: $#"
