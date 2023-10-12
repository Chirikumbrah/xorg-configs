#!/bin/bash

COLOR="^c#f1fa8c^"
ICON=""
BRIGHTNESS=$(xbacklight -get | cut -f1 -d'.')

echo "$COLOR$ICON $BRIGHTNESS%"
