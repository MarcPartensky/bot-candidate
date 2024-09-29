{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.bash
    pkgs.coreutils
    pkgs.wget
    pkgs.git
    pkgs.hyprland
    pkgs.tigervnc
    pkgs.novnc
    pkgs.zsh
    pkgs.alacritty
    pkgs.firefox
    pkgs.websockify
    pkgs.xinit  # Ajoutez xinit ici
  ];
}
