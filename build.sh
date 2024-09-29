#!/bin/bash

# Script build.sh pour démarrer VNC et noVNC

# Définir un mot de passe VNC
mkdir -p ~/.vnc
echo "vncpassword" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd
