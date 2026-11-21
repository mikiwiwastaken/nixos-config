{ config, hostname, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      path = "${config.home.homeDirectory}/.zsh_history";
      size = 10000;
      save = 10000;
      share = true;
      ignoreDups = true;
      ignoreSpace = true;
    };

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos#${hostname}";
      clear = "precmd() { precmd() { echo \"\" } } && command clear";
      ls = "eza --icons auto";
      cat = "bat";
      ncmpcpp = "$HOME/.local/bin/ncmpcpp-mocha";
    };

    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      FZF_DEFAULT_OPTS = ''
        --color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
        --color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
        --color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
        --color=selected-bg:#45475A \
        --color=border:#6C7086,label:#CDD6F4
      '';
    };

    initContent = ''
      zstyle ':completion:*' menu select
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

      bindkey -e
      bindkey '^[[H'  beginning-of-line
      bindkey '^[[F'  end-of-line
      bindkey '^[[3~' delete-char

      precmd() {
        precmd() {
          echo ""
        }
      }
    '';
  };
}

