#!/bin/bash

WORKSPACE=$1

# Obtener el monitor actual con foco
CURRENT_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .name')

# Cambiar al workspace
hyprctl dispatch workspace $WORKSPACE

# Esperar un momento para que se procese
sleep 0.1

# Regresar el foco al monitor original
hyprctl dispatch focusmonitor $CURRENT_MONITOR

# DESCOMENTA esta línea si quieres que el workspace se mueva al monitor actual
hyprctl dispatch moveworkspacetomonitor $WORKSPACE $CURRENT_MONITOR
