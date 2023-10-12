#!/bin/bash

COLOR="^c#f1fa8c^" # yellow
DATE_ICON=""
TIME_ICON=""
TIME="$(date '+%H:%M')"
DATE="$(date "+%a %d %b" | awk '{ print tolower($0) }')"

echo "$COLOR$DATE_ICON $DATE  $TIME_ICON $TIME"
