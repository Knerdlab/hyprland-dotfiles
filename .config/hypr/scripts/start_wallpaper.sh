#!/bin/bash

WALL="/home/knerd/Imagens/.ThemeFiles/wallpaper/arch_hottie8_5b.png"

# Mata instâncias antigas
pkill hyprpaper

# Inicia o hyprpaper
hyprpaper &

# Aguarda monitores ficarem disponíveis
sleep 1.5

# Aplica o wallpaper a TODOS os monitores ativos
for monitor in $(hyprctl monitors -j | jq -r '.[].name'); do
  hyprctl hyprpaper preload "$WALL"
  hyprctl hyprpaper wallpaper "$monitor,$WALL"
done

