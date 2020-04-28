#!/bin/bash

/usr/bin/xautolock -time 15 -locker "systemctl suspend" &
/usr/bin/xss-lock -- $HOME/.config/i3/locker.sh

/home/eyedevelop/.config/i3/volume.sh mute

pactl set-source-volume @DEFAULT_SOURCE@ 17%
pactl set-source-mute @DEFAULT_SOURCE@ 1
