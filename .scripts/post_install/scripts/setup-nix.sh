#!/bin/sh

# First setup
source /etc/profile
sudo ln -s /etc/sv/nix-daemon /var/service/
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update nixpkgs
nix-env -u '*'
nix-collect-garbage -d

# Install packages
nix-env -i "eww" "hyprland" "xdg-desktop-portal-hyprland-unstable"
