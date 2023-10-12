#!/bin/bash

GROUPS="yr,wheel,floppy,audio,video,cdrom,optical,network,kvm,plugdev,xbuilder,_pipewire,_flatpak,_seatd,vboxusers,libvirt,docker,pulse,pulse-access"

sudo usermod -aG $GROUPS "$USER"
