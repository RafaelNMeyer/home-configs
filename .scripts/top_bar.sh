#!/bin/sh

# kill other scripts, if any
for pid in $(pidof -x "$0"); do
    [ "$pid" != $$ ] && kill -9 "$pid"
done

while true
do
    V=$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*%)\].*\[(.*)\].*/VOL:\1\ \2/')
    D=$(date +"%a %d %b %H:%M:%S")
    B=$(cat "/sys/class/power_supply/BAT0/capacity")
    B="BAT:$B%"
    M=$(free | grep Mem | awk '{printf "MEM:%d%%", ($3/$2) * 100}')
    L=$(cat /sys/class/backlight/nvidia_0/brightness)
    L="BRI:$L%"
    T=$(bluetoothctl info AC:80:0A:75:9E:47 | grep Battery | grep -o '(.*)' | sed 's/[()]//g')
		T="🎧:$T%"
    xsetroot -name "$(printf ' %b %b  %b  %b  %b  %b  %b ' "$F" "$M" "$V" "$L" "$B" "$T" "$D")"

    sleep 1s
done &
