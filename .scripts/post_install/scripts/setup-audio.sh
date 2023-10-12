#!/bin/bash

sudo usermod -aG _pipewire,pulse,pulse-access "$USER"
sudo usermod -aG audio "$USER"
sudo ln -s /etc/sv/alsa /var/service/
sudo ln -s /etc/sv/pulseaudio /var/service/
sudo ln -s /etc/sv/wireplumber /var/service/
sudo ln -s /etc/sv/pipewire* /var/service/
