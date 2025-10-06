#!/bin/bash
WORKSPACE=$1

# Guardar el monitor actual
CURRENT_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .name')

# Cambiar workspace en el monitor actual
hyprctl dispatch workspace $WORKSPACE

# Cambiar al otro monitor
hyprctl dispatch focusmonitor +1

# Cambiar workspace en el otro monitor
hyprctl dispatch workspace $WORKSPACE

# Regresar al monitor original
if [ "$CURRENT_MONITOR" = "eDP-2" ]; then
  hyprctl dispatch focusmonitor eDP-2
else
  hyprctl dispatch focusmonitor HDMI-A-1
fi
