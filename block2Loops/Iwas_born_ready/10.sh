#!/bin/bash

#dirección del instituto

url="www.ies-sabadell.cat"
echo "Comprobando conexión a $url..."

#Bucle hasta que haya conexión
while ! ping -c 1 "$url" &> /dev/null; do
	echo "Sin conexión a $url. Reintentando en 5 segundos..."
	sleep 5
done

echo "Conexión establecida. Abriendo navegador..."

#Abrir navegador firefox con la página
Firefox ESR "https://$url" &> /dev/null &
