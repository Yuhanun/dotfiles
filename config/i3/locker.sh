#!/bin/bash

# Mute the speakers.
/usr/bin/pactl set-sink-volume 0 0
/usr/bin/pactl set-sink-mute 0 1

# Mute the microphone.
/usr/bin/pactl set-source-mute @DEFAULT_SOURCE@ 1

# Lock the screen.
/usr/bin/betterlockscreen --lock blur
