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
  };
}
