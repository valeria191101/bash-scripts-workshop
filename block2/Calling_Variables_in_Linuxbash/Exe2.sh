#!/bin/bash

echo "Introduce el nombre de la variable: "
read var_name

echo "Introduce el valor para la variable '$var_name':"
read var_value

eval "$var_name=\"$var_value\""

echo "El valor de la variable '$var_name' es: ${!var_name}"
