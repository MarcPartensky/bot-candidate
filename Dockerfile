FROM nixos/nix

WORKDIR /root

RUN nix-channel --update

COPY docker.nix build.sh ./
RUN nix-build docker.nix

COPY hyprland.conf /root/.config/hypr/hyprland.conf
COPY entrypoint.sh ./

ENTRYPOINT ["nix-shell", "--run", "./entrypoint.sh"]
