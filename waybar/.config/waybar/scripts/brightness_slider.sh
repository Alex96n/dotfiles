#!/bin/bash
val=$(wofi --dmenu --prompt "Brightness (0-100):")
[[ $val =~ ^[0-9]+$ ]] && brightnessctl set "$val%"
