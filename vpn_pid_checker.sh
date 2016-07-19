#!/usr/bin/env bash

PID=$(pidof -s /usr/bin/openconnect)
PID_FILE=/tmp/openconnect_vpn.pid

if [ $PID > 0 ]; then
   touch $PID_FILE && echo "1" > /tmp/openconnect_vpn.pid
else
   rm -f $PID_FILE
fi
sleep 5
exit