#!/bin/bash

COLOR="^c#bd93f9^"
WIRELESS="wlp5s0"
MODEM="enp0s"
ETHERNET="enp3s0"

if [[ "$(ls /sys/class/net/)" =~ $MODEM ]]; then
    MODEM_ICON=""
elif [[ "$(cat /sys/class/net/$ETHERNET/operstate)" = 'up' ]]; then
    ETHERNET_ICON=""
fi

if [ "$(cat /sys/class/net/$WIRELESS/operstate)" = 'down' ]; then
    WIFI_ICON="󰤭"
else
    WIFI="${WIFI:-$(iw dev $WIRELESS link |
        sed -n '/signal/s/.*\(-[0-9]*\).*/\1/p' |
        awk '{print ($1 > -50 ? 100 :($1 < -100 ? 0 : ($1+100)*2))}')}"

    if [[ "${WIFI}" -gt 80 ]]; then
        WIFI_ICON="󰤨"
    elif [[ "${WIFI}" -gt 60 ]]; then
        WIFI_ICON="󰤥"
    elif [[ "${WIFI}" -gt 40 ]]; then
        WIFI_ICON="󰤢"
    elif [[ "${WIFI}" -gt 20 ]]; then
        WIFI_ICON="󰤟"
    else
        WIFI_ICON="󰤯"
    fi
fi

echo "$COLOR$WIFI_ICON $ETHERNET_ICON $MODEM_ICON"
