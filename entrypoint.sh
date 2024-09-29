#!/bin/sh

export XDG_RUNTIME_DIR=/tmp/runtime
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_DESKTOP=Hyprland
export WAYLAND_DISPLAY=wayland-0

mkdir -p $XDG_RUNTIME_DIR
chmod 1777 /tmp/runtime

# startx &
vncserver :1 -geometry 1920x1080 -depth 24 &
# Hyprland --i-am-really-stupid &
novnc --listen 0.0.0.0:5901 &
wait
