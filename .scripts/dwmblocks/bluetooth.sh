#!/bin/bash

COLOR="^c#ffb86c^"
ICON=""
BT=$(bluetooth | grep -wo 'on')

[ "$BT" = "on" ] && ICON="" || ICON="󰂲"

echo "$COLOR$ICON"
