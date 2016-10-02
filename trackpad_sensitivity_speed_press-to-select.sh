#!/usr/bin/env bash

/usr/bin/echo -n "1" > /sys/devices/platform/i8042/serio1/serio2/press_to_select
/usr/bin/echo -n "220" > /sys/devices/platform/i8042/serio1/serio2/sensitivity
/usr/bin/echo -n "120" > /sys/devices/platform/i8042/serio1/serio2/speed
