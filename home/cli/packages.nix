{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fd
    zoxide

    ffmpeg
    _7zz
    jq
    poppler-utils
    resvg
    tesseract
    playerctl
    file
    vivid
  ];
}

