{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    fd
    zoxide
    ncdu

    ffmpeg
    _7zz
    jq
    poppler-utils
    resvg

    tesseract

    playerctl
    file
  ];
}

