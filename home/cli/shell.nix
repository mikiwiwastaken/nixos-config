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
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";

      ls = "eza --icons auto --group-directories-first";
      ll = "eza -la --icons auto --group-directories-first --git";
      la = "eza -a --icons auto --group-directories-first";
      lh = "eza -l --icons auto --group-directories-first";
      ld = "eza -D --icons auto";
      lt = "eza -l -s modified --icons auto";
      lk = "eza -l -s size --icons auto";
      tree = "eza --tree --icons auto";

      g = "git";
      gs = "git status -s";
      ga = "git add";
      gaa = "git add --all";
      gc = "git commit -m";
      gca = "git commit --amend --no-edit";
      gco = "git checkout";
      gcb = "git checkout -b";
      gp = "git push";
      gpf = "git push --force-with-lease";
      gl = "git pull";
      gd = "git diff";
      glg = "git log --oneline --graph --decorate --all";

      cat = "bat";
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos#${hostname}";
      clear = "precmd() { precmd() { echo \"\" } } && command clear";
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
      LS_COLORS = "$(vivid generate catppuccin-mocha)";
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
