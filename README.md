# nixos-config

My NixOS configuration using flakes and home manager.

## Install

```bash
git clone https://github.com/mikiwiwastaken/nixos-config ~/nixos
cd ~/nixos
nixos-generate-config --show-hardware-config > hosts/nixos/hardware-configuration.nix
sudo nixos-rebuild switch --flake .#nixos
```

## Update

```bash
nix flake update
sudo nixos-rebuild switch --flake .#nixos
```

## Notes

- Tested in a VM.
- hardware-configuration.nix is machine-specific.
