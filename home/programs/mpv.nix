{ pkgs, ... }:

{
  programs.mpv = {
    enable = true;

    scripts = with pkgs.mpvScripts; [
      modernz
    ];

    config = {
      osc = "no";
    };

    scriptOpts = {
      modernz = {
        osc_color = "#000000";
        window_title_color = "#CDD6F4";
        window_controls_color = "#CDD6F4";
        windowcontrols_close_hover = "#F38BA8";
        windowcontrols_max_hover = "#F9E2AF";
        windowcontrols_min_hover = "#A6E3A1";
        title_color = "#CDD6F4";
        cache_info_color = "#BAC2DE";
        seekbar_cache_color = "#585B70";
        seekbarfg_color = "#89B4FA";
        seekbarbg_color = "#45475A";
        seek_handle_color = "#B4BEFE";
        seek_handle_border_color = "#89B4FA";
        volumebar_match_seek_color = false;
        time_color = "#A6ADC8";
        chapter_title_color = "#F5C2E7";
        side_buttons_color = "#CDD6F4";
        middle_buttons_color = "#CDD6F4";
        playpause_color = "#89B4FA";
        held_element_color = "#585B70";
        hover_effect_color = "#F5C2E7";
        thumbnail_box_color = "#1E1E2E";
        thumbnail_box_outline = "#585B70";
        nibble_color = "#F5C2E7";
        nibble_current_color = "#CDD6F4";
        ab_loop_color = "#94E2D5";
      };
    };
  };
}
