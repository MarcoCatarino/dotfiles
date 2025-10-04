#!/bin/bash

ACTIVE=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .name')

if [ "$ACTIVE" = "eDP-2" ]; then
  echo "12"  # Laptop activo, externo inactivo
else
  echo "12"  # Laptop inactivo, externo activo
fi
