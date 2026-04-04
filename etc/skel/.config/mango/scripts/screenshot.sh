#!/usr/bin/env zsh
#
DIR="$HOME/Screenshots"
mkdir -p "$DIR"

FILE="$DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

grim -g "$(slurp)" - | tee "$FILE" | wl-copy

# notify-send "Screenshot Captured" "Saved to $FILE" -i camera-photo
