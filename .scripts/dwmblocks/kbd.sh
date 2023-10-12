#!/bin/bash

CAPS=$(xset -q | sed -n 's/^.*Caps Lock:\s*\(\S*\).*$/\1/p')
COLOR="^c#50fa7b^" 
ICON=""
NOTIFICATION_ICON="/usr/share/icons/Papirus/32x32/devices/input-keyboard.svg"

if [[ "$CAPS" = on ]]; then
    LAYOUT="$(xkblayout-state print %s | awk '{print toupper($0)}')"
else
    LAYOUT="$(xkblayout-state print %s | awk '{print $0}')"
fi

# dunstify -i "$NOTIFICATION_ICON" -r 25942 -u low "Layout changed" "Current layout is $LAYOUT" -t 700
echo "$COLOR$ICON $LAYOUT"
