#!/bin/bash

COLOR="^c#ffb86c^" # orange
VOL=$(pamixer --get-volume-human)
[ "$VOL" = "muted" ] || [ "$VOL" = "0%" ] && ICON="" || ICON=" $VOL"

echo "$COLOR$ICON"
