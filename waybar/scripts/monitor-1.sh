#!/bin/bash

# Obtener el monitor con foco actual
FOCUSED=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .name')

# Verificar si el monitor 1 (laptop) está activo
if [ "$FOCUSED" = "eDP-2" ]; then
  echo "{\"text\":\"1\", \"class\":\"active\"}"
else
  echo "{\"text\":\"1\", \"class\":\"inactive\"}"
fi
