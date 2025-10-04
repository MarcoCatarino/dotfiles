#!/bin/bash

# Lanzar waybar en background con nohup directamente
nohup waybar -c ~/.config/waybar/config-laptop.json -s ~/.config/waybar/style-laptop.css >/dev/null 2>&1 &
nohup waybar -c ~/.config/waybar/config-external.json -s ~/.config/waybar/style-external.css >/dev/null 2>&1 &
