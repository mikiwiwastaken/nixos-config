{ pkgs, ... }:

let
  catppuccinCss = ''
    @define-color accent_bg_color #cba6f7;
    @define-color accent_color #cba6f7;
    @define-color accent_fg_color #11111b;
    @define-color window_bg_color #1e1e2e;
    @define-color window_fg_color #cdd6f4;
    @define-color view_bg_color #1e1e2e;
    @define-color view_fg_color #cdd6f4;
    @define-color headerbar_bg_color #181825;
    @define-color headerbar_fg_color #cdd6f4;
    @define-color card_bg_color #313244;
    @define-color card_fg_color #cdd6f4;
    @define-color popover_bg_color #313244;
    @define-color popover_fg_color #cdd6f4;
    @define-color sidebar_bg_color #181825;
    @define-color sidebar_fg_color #cdd6f4;
  '';
in
{
  gtk.iconTheme = {
    name = "Papirus-Dark";
    package = pkgs.papirus-icon-theme;
  };

  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    gtk3.extraCss = catppuccinCss;
    gtk4.extraCss = catppuccinCss;
  };

  home.pointerCursor = {
    package = pkgs.catppuccin-cursors.mochaDark;
    name = "catppuccin-mocha-dark-cursors";
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  dconf.settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
}
