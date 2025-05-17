#!/bin/bash
sleep 1

# Start on workspace 1
hyprctl dispatch workspace 1

# Kitty — workspace 1 (default)
kitty &

# Switch silently to 2, launch VS Code, go back to 1
hyprctl dispatch workspace  2
code &
hyprctl dispatch workspace 1

# Switch silently to 3, launch Firefox, go back to 1
hyprctl dispatch workspace 3
firefox &
sleep 1
hyprctl dispatch workspace 1
