#!/bin/bash

# Script build.sh pour démarrer VNC et noVNC

# Définir un mot de passe VNC
mkdir -p ~/.vnc
echo "vncpassword" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# Définir le répertoire home de l'utilisateur
echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "user:x:1000:1000::/home/user:/bin/bash" >> /etc/passwd
echo "user:x:1000:" >> /etc/group

mkdir -p /home/user
chown -R user:user /home/user
