#!/bin/bash

# First make sure the sound is loaded.
pactl upload-sample /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga

# Check if the volume should be muted.
if [[ "$1" == "mute" ]]; then
  for sink in $(pactl list sinks short | cut -f 1); do
    pactl set-sink-mute "$sink" 1
  done
  exit 0
else
  pactl set-sink-mute @DEFAULT_SINK@ 0
fi

# Update the volume with the first argument.
pactl set-sink-volume @DEFAULT_SINK@ "$1"

# Play the corresponding sound, if not disabled.
if [[ "$2" != "nosound" ]]; then
  pactl play-sample audio-volume-change @DEFAULT_SINK@
fi
