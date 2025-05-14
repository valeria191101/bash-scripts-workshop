#!/bin/bash
#Obtener usuarios con letras mayúsculas
echo "Usuarios del sistema con letras mayúsculas en su nombre: "
grep '^[^:]*[A-Z][^:]*:' /etc/passwd | cut -d: -f1

# Solicitar al un nombre de usuario
echo "Introduce un nombre de usuario (sensible a mayúsculas/minúsculas):"
read usuario

#Hasta que el usuario sea válido
while ! id "$usuario" &>/dev/null; do
	echo "Usuario inválido. Intenta de nuevo:"
	read usuario
done

#Mostrar información del usuario
echo -e "\n usuario válido. Aqui esta la información de '$usuario':"
getent passwd "$usuario"


