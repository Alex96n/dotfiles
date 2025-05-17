#!/bin/bash
pactl list sinks | grep 'Name:' | awk '{print $2}' | while read -r sink; do
  pactl set-sink-volume "$sink" $(wofi --dmenu --prompt "Volume (0-100):" | awk '{print $1}')%
done
