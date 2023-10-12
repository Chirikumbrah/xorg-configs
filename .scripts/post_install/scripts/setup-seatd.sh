#!/bin/bash

sudo ln -s /etc/sv/seatd /var/service/seatd
sudo usermod -aG _seatd "$USER"