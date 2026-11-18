{ ... }:

{
  programs.wofi = {
    enable = true;

    settings = {
      show = "drun";
      width = 520;
      height = 380;
      location = "center";
      prompt = "Search apps...";
      layer = "overlay";
      columns = 1;
      allow_images = true;
      image_size = 28;
      insensitive = true;
      matching = "multi-contains";
      no_actions = true;
      hide_scroll = true;
      term = "kitty";
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", sans-serif;
        font-size: 14px;
      }

      window {
        background: transparent;
      }

      #outer-box {
        margin: 0;
        padding: 12px;
        background-color: rgba(30, 30, 46, 0.8);
        border: 1px solid rgba(180, 190, 254, 0.25);
        border-radius: 16px;
      }

      #input {
        padding: 10px 14px;
        margin-bottom: 10px;
        color: #cdd6f4;
        background-color: rgba(49, 50, 68, 0.6);
        border: 1px solid transparent;
        border-radius: 12px;
        box-shadow: none;
      }

      #input:focus {
        border: 1px solid #b4befe;
      }

      #scroll {
        margin: 0;
      }

      #entry {
        padding: 8px 10px;
        border-radius: 10px;
      }

      #entry:selected {
        background-color: #b4befe;
      }

      #img {
        margin-right: 8px;
      }

      #text {
        color: #cdd6f4;
      }

      #entry:selected #text {
        color: #1e1e2e;
        font-weight: 700;
      }
    '';
  };
}
