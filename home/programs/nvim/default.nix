{ pkgs, lib, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      gcc
      gnumake
      unzip
      tree-sitter

      lua-language-server
      typescript-language-server
      vscode-langservers-extracted
      pyright
      ruff
      emmet-language-server

      nixd
    ];
  };

  xdg.configFile."nvim" = {
    source = lib.cleanSourceWith {
      src = ./.;
      filter = path: type: (baseNameOf path) != "default.nix";
    };
    recursive = true;
  };
}
