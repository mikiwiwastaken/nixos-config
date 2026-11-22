{ config, pkgs, ... }:

let
  hypr = "${config.home.homeDirectory}/nixos/home/desktop/hypr";
in
{
  xdg.configFile = {
    "hypr/hyprland.lua" = {
      source = config.lib.file.mkOutOfStoreSymlink "${hypr}/hyprland.lua";
      force = true;
    };

    "hypr/configs" = {
      source = config.lib.file.mkOutOfStoreSymlink "${hypr}/configs";
      recursive = true;
      force = true;
    };
  };

  home.packages = with pkgs; [
    hyprpolkitagent
    hyprpaper
    hyprlock
    hypridle
    hyprpicker

    grim
    slurp
    wf-recorder
    libnotify
    wl-clipboard
    cliphist

    nixos-artwork.wallpapers.catppuccin-mocha
  ];
}

