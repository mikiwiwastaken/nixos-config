{ pkgs, ... }:

let
  flavor = "mocha";
  accent = "mauve";
  themePkg = pkgs.catppuccin-gtk.override {
    accents = [ accent ];
    variant = flavor;
    size = "standard";
  };
in
{
  gtk = {
    enable = true;
    gtk3.extraConfig.gtk-application-prefer-dark-theme = 1;
    gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
    theme = {
      name = "catppuccin-${flavor}-${accent}-standard";
      package = themePkg;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        inherit flavor accent;
      };
    };
  };

  xdg.configFile."gtk-4.0" = {
    source = "${themePkg}/share/themes/catppuccin-${flavor}-${accent}-standard/gtk-4.0";
    recursive = true;
  };

  home.pointerCursor = {
    package = pkgs.catppuccin-cursors.mochaDark;
    name = "catppuccin-mocha-dark-cursors";
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}
