#!/bin/bash

mkdir -p /tmp/picom
mkdir -p ~/.local/bin
git clone https://github.com/FT-Labs/picom.git /tmp/picom
cd /tmp/picom
git submodule update --init --recursive
meson setup --buildtype=release . build
ninja -C build
mv /tmp/picom/build/src/picom ~/.local/bin/picom-ft-labs
