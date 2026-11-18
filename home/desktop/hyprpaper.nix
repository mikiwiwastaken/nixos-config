{ pkgs, ... }:

{
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    wallpaper {
      monitor =
      path = ${pkgs.nixos-artwork.wallpapers.catppuccin-mocha}/share/backgrounds/nixos/nixos-wallpaper-catppuccin-mocha.png
      fit_mode = cover
    }

    splash = false
    ipc = true
  '';
}
