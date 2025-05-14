#!/bin/bash

echo -n "Introduce el nombre de usuario: "
read username

echo -n "Introduce la contraseña: "
read -s password

echo

echo "Usuario: $username | Contraseña: $password"
