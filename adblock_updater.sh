#!/usr/bin/env bash

export XAUTHORITY=/home/srsantos/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

if ! [ "`ping -4 -c 1 google.com`" ]; then
    notify-send -u critical "Currently offline." "Will check for updated Fanboy adblock list later..."
else
    wget --quiet https://www.fanboy.co.nz/r/fanboy-ultimate.txt --output-document=/home/srsantos/.local/share/luakit/adblock/fanboy-ultimate.txt
    notify-send -u normal -i /usr/share/icons/gnome/256x256/status/security-medium.png 'Fanboy adblock list updated.'
fi
exit 0
