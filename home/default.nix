{ ... }:

{
  imports = [
    ./theme.nix
    ./desktop
    ./programs
    ./cli
  ];

  home.username = "mikiwi";
  home.homeDirectory = "/home/mikiwi";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
