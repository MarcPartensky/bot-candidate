{ pkgs ? import <nixpkgs> {} }:

pkgs.dockerTools.buildImage {
  name = "bot-candidate";
  tag = "latest";

  # Paquets à inclure dans l'image Docker
  contents = with pkgs; [
    bash
    coreutils
    wget
    git
    hyprland
    tigervnc
    novnc
    zsh
    alacritty
    firefox
  ];

  # # Ajouter le script de démarrage build.sh
  # extraCommands = ''
  #   # Copier le script `build.sh` dans l'image Docker
  #   copyToRoot ./build.sh
  #   chmod +x /build.sh
  # '';

  # Configurer le démarrage du conteneur avec le script build.sh
  config = {
    Cmd = [ "/root/build.sh" ];
  };
}
