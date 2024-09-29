#!/bin/sh

vncserver :1 -geometry 1920x1080 -depth 24 &
novnc --listen 0.0.0.0:5901 &
wait
