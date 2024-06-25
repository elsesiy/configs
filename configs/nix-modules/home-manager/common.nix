{ pkgs, lib, ... }: {
  home.stateVersion = "24.05";

  # imports = [ ./starship.nix ./wezterm.nix ];

  home.packages = [
    # pkgs.darwin.apple_sdk.frameworks.Security
    pkgs.bat
    pkgs.binutils
    pkgs.cargo
    pkgs.clang-tools
    pkgs.cosign
    pkgs.crane
    pkgs.curl
    pkgs.fd
    pkgs.git
    pkgs.go
    pkgs.grpcurl
    pkgs.jq
    pkgs.less
    pkgs.neovim
    pkgs.openssl
    pkgs.procs
    pkgs.ripgrep
    pkgs.stow
    pkgs.tldr
    pkgs.tokei
    pkgs.tzdata
    # pkgs.wezterm
    pkgs.watch
    pkgs.wget
    pkgs.yq
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINFO_DIRS = "/etc/profiles/per-user/$USER/share/terminfo";
    PATH = "$HOME/.nix-profile/bin:/etc/profiles/per-user/$USER/bin:$PATH";
  };

  programs = {
    home-manager.enable = true;

    bash.enable = true;
    fish.enable = true;
    zsh.enable = true;

    eza.enable = true; # default shell integration
    fzf.enable = true;
    gh.enable = true;

    nix-index.enable = true; # default shell integration

    # disable fish integration since it's manually managed by conf.d/starship.fish
    starship = {
      enable = true;
      enableFishIntegration = false;
    };

    yazi = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };

    zoxide.enable = true; # default shell integrations

    zellij = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
  };
}
