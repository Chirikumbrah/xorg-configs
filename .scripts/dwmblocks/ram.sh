#!/bin/sh

MEM="$(free -h | awk 'FNR==2{ print $3 }' | tr -d "i")"
COLOR="^c#50fa7b^"
ICON=""

echo "$COLOR$ICON $MEM"
