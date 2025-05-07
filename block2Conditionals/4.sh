#!/bin/bash

echo -n "Introduce un tres: "
read numero

if [ "$numero" = 3 ]; then
	echo "El número introducido és un 3"
else
	echo "El número $numero No és un 3"
fi
