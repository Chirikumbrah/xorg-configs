#!/bin/bash

flatpak install com.github.Anuken.Mindustry

ALL_APPS="$(flatpak list --app --columns=application)"

for APP in $ALL_APPS
do
  sudo flatpak override "$APP" --filesystem=home -v --ostree-verbose
  flatpak override "$APP" --filesystem=home -u -v --ostree-verbose
done
