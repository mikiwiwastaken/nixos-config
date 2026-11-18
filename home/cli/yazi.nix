{ pkgs, ... }:

let
  catppuccin-yazi = pkgs.fetchFromGitHub {
    owner = "catppuccin";
    repo = "yazi";
    rev = "d62802be39210ea10e54b3e3b09735c6cb9e57c1";
    sha256 = "sha256-bwzEO8exoBwa19q+jnYjHkaamGl2mhfukIEhDfUCRGI=";
  };
in
{
  programs.yazi = {
    enable = true;

    settings = {
      opener = {
        edit = [
          {
            run = "nvim '%s'";
            block = true;
            for = "unix";
          }
        ];
        image = [
          {
            run = "imv-dir %s";
            orphan = true;
            for = "unix";
          }
        ];
        pdf = [
          {
            run = "zathura %s";
            orphan = true;
            for = "unix";
          }
        ];
        video = [
          {
            run = "mpv %s";
            orphan = true;
            for = "unix";
          }
        ];
      };

      open = {
        prepend_rules = [
          { mime = "text/*"; use = "edit"; }
          { mime = "image/*"; use = "image"; }
          { mime = "application/pdf"; use = "pdf"; }
          { mime = "video/*"; use = "video"; }
        ];
      };

      mgr = {
        sort_by = "natural";
        sort_sensitive = false;
        sort_reverse = false;
        sort_dir_first = true;
        sort_translit = false;
      };
    };
  };

  xdg.configFile."yazi/theme.toml".source = "${catppuccin-yazi}/themes/mocha/catppuccin-mocha-blue.toml";
}
