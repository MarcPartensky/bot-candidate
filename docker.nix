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
    # hyprland
    plasma-desktop
    tigervnc
    # wayvnc
    novnc
    zsh
    alacritty
    firefox
    procps # ps cmd needed for novnc
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

    # Créer un utilisateur 'user'
    # environment.systemPackages = [
    #   pkgs.useradd
    # ];

    # Création de l'utilisateur
    # Remplacez "password" par le mot de passe souhaité
    system.user = {
      user = {
        isNormalUser = true;
        home = "/home/user";
        shell = pkgs.bash;
        extraGroups = [ "wheel" ];
      };
    };
  };
}
