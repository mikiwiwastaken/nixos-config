{ ... }:

{
  home.file = {
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

  };

  home.sessionPath = [ "$HOME/.local/bin" ];
}
