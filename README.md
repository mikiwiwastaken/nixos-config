# nixos-config

My NixOS configuration using flakes and home manager.

## Install

```bash
git clone https://github.com/mikiwiwastaken/nixos-config ~/nixos
cd ~/nixos
nixos-generate-config --show-hardware-config > hosts/nixos/hardware-configuration.nix
sudo nixos-rebuild switch --flake .#$(hostname)
```

## Update

```bash
nix flake update
sudo nixos-rebuild switch --flake .#$(hostname)
```

## Notes

- Change `username` and `hostname` near the top of `flake.nix` when using this configuration on another machine.
- Tested in a VM.
- hardware-configuration.nix is machine-specific.
