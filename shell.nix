{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.bash
    pkgs.coreutils
    pkgs.wget
    pkgs.git
    pkgs.plasma-desktop
    pkgs.sddm
    # pkgs.kdeApplications
    # pkgs.hyprland
    pkgs.xinit
    pkgs.tigervnc
    # pkgs.wayvnc
    pkgs.novnc
    pkgs.zsh
    pkgs.alacritty
    pkgs.firefox
  ];

  shellHook = ''
    # Définir les variables d'environnement
    # export XDG_RUNTIME_DIR=/tmp/runtime
    # export XDG_SESSION_TYPE=x11
    # export XDG_CURRENT_DESKTOP=Hyprland
    # export XDG_SESSION_DESKTOP=Hyprland
    # export WAYLAND_DISPLAY=wayland-0
    # mkdir -p "$XDG_RUNTIME_DIR"

    # echo "WAYLAND_DISPLAY=$WAYLAND_DISPLAY"
    # echo "XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR"
    # echo "XDG_SESSION_TYPE=$XDG_SESSION_TYPE"
    # echo "XDG_CURRENT_DESKTOP=$XDG_CURRENT_DESKTOP"
    # echo "XDG_SESSION_DESKTOP=$XDG_SESSION_DESKTOP"
  '';
}
