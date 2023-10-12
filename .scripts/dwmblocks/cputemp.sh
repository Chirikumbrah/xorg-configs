#!/bin/bash

COLOR="^c#8be9fd^" # cyan
ICON=""
TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)

echo "$COLOR$ICON $((TEMP / 1000))°C" 