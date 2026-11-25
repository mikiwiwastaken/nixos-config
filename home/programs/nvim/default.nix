{ pkgs, lib, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      gcc
      gnumake
      unzip
      tree-sitter

      go
      gopls
      gotools
      delve

      bash-language-server
      yaml-language-server
      vscode-langservers-extracted
      taplo
      terraform-ls
      dockerfile-language-server
      docker-compose-language-service
      pyright
      ruff
      lua-language-server
      marksman
      sqls
      nixd

      stylua
      shfmt
      yamlfmt
      prettier
      sqlfluff

      hadolint
      shellcheck
      yamllint
      tflint

      terraform
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
