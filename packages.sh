#!/bin/bash
packages=(
    hypridle
    hyprpicker
    waybar
    caja
    swww
    nano
    swaync
    curl
    neofetch
)

sudo pacman -S --needed "${packages[@]}"