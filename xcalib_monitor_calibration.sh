#!/usr/bin/env bash

/usr/bin/sleep 0.25

/usr/bin/xcalib -d :0 /home/srsantos/.color/icc/LP140WF1_SPK1.icm

/usr/bin/systemd-cat -t "xcalib_screen" /usr/bin/echo "***** LAPTOP MONITOR COLOR CALIBRATED ON $(date) *****"
