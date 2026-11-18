{ ... }:

{
  home.file = {
    ".local/bin/music" = {
      source = ./music;
      executable = true;
    };

    ".local/bin/music-watch" = {
      source = ./music-watch;
      executable = true;
    };

    ".local/bin/ncmpcpp-mocha" = {
      source = ./ncmpcpp-mocha;
      executable = true;
    };

    ".local/bin/record" = {
      source = ./record;
      executable = true;
    };

    ".local/bin/screenshot" = {
      source = ./screenshot;
      executable = true;
    };

    ".local/bin/wofi-menus" = {
      source = ./wofi-menus;
      executable = true;
    };
  };

  home.sessionPath = [ "$HOME/.local/bin" ];
}
