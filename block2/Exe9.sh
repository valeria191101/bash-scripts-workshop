#!/bin/bash

CRACK="oriolorioloriol"

echo "The result of ##*ori is" ${CRACK##*ori}
echo "The result of #*ori is" ${CRACK#*ori}
echo "The result of %%ol* is" ${CRACK%%ol*}
echo "The result of %ori* is" ${CRACK%ori*}

# a)
#  # --> Elimina la coincidencia más corta desde el inicio
#  ## --> Elimmina la coincidencia más larga desde el inicio
#  % --> Elimina la coincidencia más corta desde el final
#  %% --> Elimina la coincidencia más larga desde el final

# b)
# Sirven para extraer rutas de archivos, eliminan prefijos o sufijos y limpian cadenas de texto automáticamente

#c)
# El resultado cambia, dependiendo de si la cadena tienen o no las partes buscadas
