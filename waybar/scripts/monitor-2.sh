#!/bin/bash

# Obtener el monitor con foco actual
FOCUSED=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .name')

# Verificar si el monitor 2 (externo) está activo
if [ "$FOCUSED" = "HDMI-A-1" ]; then
  echo "{\"text\":\"2\", \"class\":\"active\"}"
else
  echo "{\"text\":\"2\", \"class\":\"inactive\"}"
fi
