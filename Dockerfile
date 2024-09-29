FROM nixos/nix

WORKDIR /root

RUN nix-channel --update


COPY docker.nix build.sh ./
RUN nix-build docker.nix

# WORKDIR /home/user
# USER user
COPY hyprland.conf .config/hypr/hyprland.conf
COPY shell.nix entrypoint.sh ./

ENTRYPOINT ["nix-shell", "--run", "./entrypoint.sh"]
