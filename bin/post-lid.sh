#!/bin/bash

export XAUTHORITY=`ls -1 /home/*/.Xauthority | head -n 1`
export DISPLAY=":`ls -1 /tmp/.X11-unix/ | sed -e s/^X//g | head -n 1`"

grep -q closed /proc/acpi/button/lid/*/state
xinput set-int-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 8 $?
