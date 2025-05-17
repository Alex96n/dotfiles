#!/bin/bash

set -e

# List of stow packages (subdirectories in your dotfiles repo)
PACKAGES=(
  vscode
  hyprland
  waybar
)

# Go to the directory containing the script (assumes it's the root of the dotfiles repo)
cd "$(dirname "$0")"

for package in "${PACKAGES[@]}"; do
  echo "Stowing $package..."
  stow --restow "$package"
done

echo "All packages stowed successfully."

