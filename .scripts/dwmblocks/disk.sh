#!/bin/bash

ORANGE="^c#ffb86c^"
PURPLE="^c#bd93f9^"
ROOT_SIGN="/"
USER_SIGN="~"

case $1 in
  -u)
    DIR=/home/yr/.yrdata
    LABEL="$PURPLE$USER_SIGN"
    ;;
  -r)
    DIR=/
    LABEL="$ORANGE$ROOT_SIGN"
    ;;
esac

USAGE=$(df -h -P "$DIR" | awk '/\/.*/ { print $4; exit 0 }')

echo "$LABEL $USAGE"

