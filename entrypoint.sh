#!/bin/sh

vncserver :1 -geometry 1920x1080 -depth 24 &
websockify --web /usr/share/novnc/ 6080 localhost:5901 &
wait
