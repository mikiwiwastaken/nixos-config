{ config, ... }:

{
  services.mpd = {
    enable = true;

    musicDirectory = "${config.home.homeDirectory}/Music";
    dbFile = "${config.home.homeDirectory}/.config/mpd/database";
    playlistDirectory = "${config.home.homeDirectory}/.config/mpd/playlists";
    
    network = {
      listenAddress = "127.0.0.1";
      port = 6600;
    };

    extraConfig = ''
      pid_file               "${config.home.homeDirectory}/.config/mpd/pid"
      state_file             "${config.home.homeDirectory}/.config/state"
      sticker_file           "${config.home.homeDirectory}/.config/mpd/sticker.sql"
      log_level              "notice"

      auto_update            "yes"
      restore_paused         "yes"
      follow_inside_symlinks "yes"

      audio_output {
        type "pipewire"
        name "PipeWire output"
      }

      audio_output {
        type   "fifo"
        name   "Visualizer feed"
        path   "/tmp/mpd.fifo"
        format "44100:16:2"
      }
    '';
  };
}
