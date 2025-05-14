#!/bin/bash

echo "Introduce el nombre de una variable global (por ejemplo: HOME, USER, SHELL, PWD, PATH):"
read global_var

echo "El valor de $global_var es: ${!global_var}"

echo "Valor de retorno del último comando: $?"

echo "Argumentos pasados al script: $@"
echo "Número de argumentos: $#"

echo "Valor de retorno del último comando: $?"

echo "PID del Shell actual: $$"
