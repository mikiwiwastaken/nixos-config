{ username, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos
  ];

  # --- VM guest ---
  hardware.graphics.enable = true;
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;

  # --- Boot ---
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # --- Host basics ---
  networking.hostName = hostname;
  networking.networkmanager.enable = true;
  time.timeZone = "Asia/Bangkok";
  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # --- User ---
  users.users.${username} = {
    isNormalUser = true;
    description = username;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Never change after the initial install.
  system.stateVersion = "26.05";
}
