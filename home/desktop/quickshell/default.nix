{ config, pkgs, ... }:

let
  quickshellConfig = "${config.home.homeDirectory}/nixos/home/desktop/quickshell";
in
{
  home.packages = [ pkgs.quickshell ];

  xdg.configFile."quickshell" = {
    source = config.lib.file.mkOutOfStoreSymlink quickshellConfig;
    force = true;
  };

  home.packages = with pkgs; [
    brightnessctl
    wireplumber
    pulseaudio
  ];
}
