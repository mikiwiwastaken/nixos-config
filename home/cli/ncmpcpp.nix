{ config, ... }: {
  programs.ncmpcpp = {
    enable = true;
    
    settings = {
      # --- Connection ---
      mpd_host = "localhost";
      mpd_port = 6600;
      mpd_music_dir = "${config.home.homeDirectory}/Music";
      mpd_connection_timeout = 5;

      # --- Visualizer ---
      visualizer_data_source = "/tmp/mpd.fifo";
      visualizer_output_name = "Visualizer feed";
      visualizer_in_stereo = "yes";
      visualizer_look = "●▮";
      visualizer_spectrum_smooth_look = "yes";
      visualizer_color = "112, 118, 117, 152, 224, 217, 212, 219, 184";

      # --- Layout ---
      user_interface = "alternative";
      startup_screen = "playlist";
      locked_screen_width_part = 55;
      ask_for_locked_screen_width_part = "no";
      screen_switcher_mode = "playlist, browser";
      jump_to_now_playing_song_at_start = "yes";

      header_visibility = "yes";
      statusbar_visibility = "no";
      titles_visibility = "no";
      header_text_scrolling = "yes";
      cyclic_scrolling = "yes";
      centered_cursor = "yes";
      autocenter_mode = "yes";
      lines_scrolled = 2;
      mouse_support = "yes";
      mouse_list_scroll_whole_page = "no";

      # --- Borders ---
      window_border_color = 239;
      active_window_border = 184;

      # --- Progress bar ---
      progressbar_look = "━╸─";
      progressbar_color = 239;
      progressbar_elapsed_color = 184;

      # --- Header (alternative UI) ---
      alternative_header_first_line_format = "$b$(184){%t}|{%f}$(end)$/b";
      alternative_header_second_line_format = "{$(112)%a$(end)}{ $(104)·$(end) $(152)%b$(end)}{ $(104)·$(end) $(224)%y$(end)}";
      header_window_color = "default";
      volume_color = 152;
      state_line_color = 104;
      state_flags_color = 219;
      alternative_ui_separator_color = 239;

      # --- Playlist / Lists ---
      playlist_display_mode = "columns";
      playlist_editor_display_mode = "columns";
      browser_display_mode = "columns";
      search_engine_display_mode = "columns";
      incremental_seeking = "yes";
      seek_time = 1;
      volume_change_step = 2;
      playlist_disable_highlight_delay = 3;

      song_columns_list_format = "(4f)[104]{n} (30)[112]{t|f:Title} (24)[184]{a:Artist} (24)[152]{b:Album} (7f)[224]{l}";
      song_list_format = "{$(112)%t$(end)}|{$(112)%f$(end)}$R{$(184)%a$(end)  }{$(224)%l$(end)}";
      song_library_format = "{%n - }{%t}|{%f}";
      song_status_format = "{$(112)%a$(end) $(104)·$(end) }{$(184)%t$(end)}|{$(184)%f$(end)}{ $(104)·$(end) $(152)%b$(end)}";

      now_playing_prefix = "$b$(184)▶ $(end)";
      now_playing_suffix = "$/b";
      browser_playlist_prefix = "$(152)playlist$(end) ";
      selected_item_prefix = "$(219)";
      selected_item_suffix = "$(end)";
      modified_item_prefix = "$(224)● $(end)";
      current_item_prefix = "$(190_237)$b";
      current_item_suffix = "$/b$(end)";
      current_item_inactive_column_prefix = "$(184)$b";
      current_item_inactive_column_suffix = "$/b$(end)";
      discard_colors_if_item_is_selected = "no";

      # --- Colors ---
      colors_enabled = "yes";
      main_window_color = 190;
      empty_tag_color = 212;
      empty_tag_marker = "∅";
      color1 = 104;
      color2 = 190;
      statusbar_color = 104;
      statusbar_time_color = 184;
      player_state_color = 219;

      # --- Behaviour ---
      playlist_show_remaining_time = "no";
      playlist_shorten_total_times = "yes";
      display_bitrate = "no";
      display_remaining_time = "no";
      show_duplicate_tags = "no";
      ignore_leading_the = "yes";
      media_library_primary_tag = "album_artist";
      media_library_albums_split_by_date = "no";
      allow_for_physical_item_deletion = "no";
      ask_before_clearing_playlists = "no";
      clock_display_seconds = "no";
      regular_expressions = "extended";
      search_engine_default_search_mode = 1;
      follow_now_playing_lyrics = "yes";
      store_lyrics_in_song_dir = "no";
      enable_window_title = "yes";
      data_fetching_delay = "yes";
      message_delay_time = 3;
    };

    bindings = [
      # --- Movement ---
      { key = "j"; command = "scroll_down"; }
      { key = "k"; command = "scroll_up"; }
      { key = "ctrl-d"; command = "page_down"; }
      { key = "ctrl-u"; command = "page_up"; }
      { key = "g"; command = "move_home"; }
      { key = "G"; command = "move_end"; }
      { key = "}"; command = "scroll_down_album"; }
      { key = "{"; command = "scroll_up_album"; }
      { key = "}"; command = "scroll_down_artist"; }
      { key = "{"; command = "scroll_up_artist"; }

      # --- h / l = left / right / back / enter ---
      { key = "h"; command = "previous_column"; }
      { key = "h"; command = "master_screen"; }
      { key = "h"; command = "jump_to_parent_directory"; }
      { key = "l"; command = "next_column"; }
      { key = "l"; command = "slave_screen"; }
      { key = "l"; command = "enter_directory"; }

      # --- Switch screens ---
      { key = "H"; command = "previous_screen"; }
      { key = "L"; command = "next_screen"; }

      # --- Search (vim style) ---
      { key = "/"; command = "find"; }
      { key = "/"; command = "find_item_forward"; }
      { key = "?"; command = "find"; }
      { key = "?"; command = "find_item_backward"; }
      { key = "n"; command = "next_found_item"; }
      { key = "N"; command = "previous_found_item"; }

      # --- Editing ---
      { key = "d"; command = "delete_playlist_items"; }
      { key = "d"; command = "delete_browser_items"; }
      { key = "d"; command = "delete_stored_playlist"; }
      { key = "J"; command = "move_sort_order_down"; }
      { key = "J"; command = "move_selected_items_down"; }
      { key = "K"; command = "move_sort_order_up"; }
      { key = "K"; command = "move_selected_items_up"; }

      # --- Keys moved to make room ---
      { key = "ctrl-g"; command = "jump_to_position_in_song"; }
      { key = "alt-g"; command = "jump_to_browser"; }
      { key = "alt-g"; command = "jump_to_playlist_editor"; }
      { key = "ctrl-y"; command = "show_lyrics"; }

      # --- Quit ---
      { key = "q"; command = "quit"; }
    ];
  };
}
