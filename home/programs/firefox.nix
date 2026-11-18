{ ... }:

{
  programs.firefox = {
    enable = true;

    profiles.default = {
      id = 0;
      isDefault = true;
      settings = {
        # Built-in dark theme for the browser UI
        "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";
        "browser.theme.toolbar-theme" = 0;
        "browser.theme.dark-private-windows" = true;

        # Websites that support it will use their dark mode
        "layout.css.prefers-color-scheme.content-override" = 0;

        # Cursor will still be visible while typing
        "widget.gtk.hide-pointer-while-typing.enabled" = false;
      };
    };
  };
}
