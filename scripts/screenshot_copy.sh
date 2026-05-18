#!/bin/sh
# Take full-screen screenshot and save to ~/Pictures/Screenshots/dwl/

PICTURES_DIR=$(xdg-user-dir PICTURES)
[ -z "$PICTURES_DIR" ] && PICTURES_DIR="$HOME/Pictures"

# Create dwl subdirectory
SCREENSHOT_DIR="$PICTURES_DIR/Screenshots/dwl"
mkdir -p "$SCREENSHOT_DIR"

# Capture with date/time in filename
grim "$SCREENSHOT_DIR/screenshot_$(date '+%Y-%m-%d_%H-%M-%S').jpg"
