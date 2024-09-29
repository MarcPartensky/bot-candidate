FROM nixos/nix

WORKDIR /root

COPY docker.nix build.sh ./
RUN nix-build docker.nix

COPY entrypoint.sh ./

ENTRYPOINT ["./entrypoint.sh"]
