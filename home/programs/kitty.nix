{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha"; 
    settings = {
      enable_audio_bell = false;
      window_padding_width = 8;
      confirm_os_window_close = 0;
      font_family = "JetBrainsMono Nerd Font";
      font_size = 11;
      cursor_shape = "beam";
      cursor_trail = 3;
      cursor_trail_start_threshold = 0;
      tab_bar_edge = "bottom";
      tab_bar_style = "powerline";
      tab_powerline_style = "angled";
      shell = "${pkgs.zsh}/bin/zsh";
      selection_background = "#585B70";
      selection_foreground = "none";
    };
  };
}
