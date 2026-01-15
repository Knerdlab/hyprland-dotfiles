#!/bin/bash

CONFIG_AC="$HOME/.config/hypr/hypridle_ac.conf"
CONFIG_BAT="$HOME/.config/hypr/hypridle_bat.conf"
LINK="$HOME/.config/hypr/hypridle.conf"

POWER_DIR="/sys/class/power_supply"

has_battery=false
on_ac=false

# Detecta bateria
if ls "$POWER_DIR" | grep -q "^BAT"; then
    has_battery=true
fi

# Detecta AC online (qualquer adaptador)
for ps in "$POWER_DIR"/*; do
    if [[ -f "$ps/type" && $(cat "$ps/type") == "Mains" ]]; then
        if [[ $(cat "$ps/online") -eq 1 ]]; then
            on_ac=true
        fi
    fi
done

# Lógica final
if ! $has_battery; then
    # Desktop
    ln -sf "$CONFIG_AC" "$LINK"
elif $on_ac; then
    # Laptop na tomada
    ln -sf "$CONFIG_AC" "$LINK"
else
    # Laptop na bateria
    ln -sf "$CONFIG_BAT" "$LINK"
fi

# Reinicia hypridle de forma limpa
systemctl --user restart hypridle


