#!/bin/bash

# Argumentos: $1 = Mensaje para el usuario, $2 = Comando a ejecutar

# Mostramos el menú Sí/No con wofi
# Usamos el tema style3.css para consistencia
selected=$(echo -e "No
Sí" | wofi -dmenu --style ~/.config/wofi/style3.css -p "$1" -L 2 -i --width 300 --height 150)

if [[ "$selected" == "Sí" ]]; then
    eval "$2"
fi
