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
    swayosd
    hyprpaper
    hyprlock
    hypridle
    hyprpicker
    hyprsunset

    grim
    slurp
    wf-recorder
    libnotify
    wl-clipboard
    cliphist

    brightnessctl
    wireplumber
    pulseaudio

    pavucontrol
    libqalculate

    nixos-artwork.wallpapers.catppuccin-mocha
  ];
}

