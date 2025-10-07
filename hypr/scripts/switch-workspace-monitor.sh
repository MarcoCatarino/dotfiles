#!/bin/bash

WORKSPACE=$1

# Guardar el monitor actual
CURRENT_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .name')

# Cambiar al workspace
hyprctl dispatch workspace $WORKSPACE

# Pequeño delay
sleep 0.03

# Regresar foco al monitor original
hyprctl dispatch focusmonitor $CURRENT_MONITOR
