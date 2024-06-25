# Configs

Central place to manage my terminal configs such as neovim, zhsrc, etc.

## Pre-requisites

- Install font for icons to work & update terminal accordingly.
Either use `JetBrainsMono` located in `fonts` or browse others [here](https://github.com/ryanoasis/nerd-fonts)
- Install [Nix (Package Manager)](https://nixos.org/download/)
- Install [NvChad](https://github.com/NvChad/NvChad)
- Install [wezterm](https://wezfurlong.org/wezterm/index.html)

### Setting up fish (Mac)

```shell
$(which fish) > /etc/shells
chsh -s $(which fish) $(id)
```

## Usage

I'm using [stow](https://www.gnu.org/software/stow/) to manage my configs via symlinks to this git repo.

From the repo root:

```shell
# backup existing installation & remove existing nvim data
mv ~/.config/nvim ~/.config/nvim.bak
rm -rf ~/.local/share/nvim

# backup existing fish config
mv ~/.config/fish/config.fish{,.bak}

# symlink configs for bat, fish, nix, starship, wezterm, yazi & zellij
stow --target=/Users/$USER/.config configs

# rebuild bat cache
bat cache --build

# install fish plugins
fisher update

# restart nix daemon
sudo launchctl kickstart -k system/org.nixos.nix-daemon

# nvim
mkdir -p ~/.config/nvim && stow --target=/Users/$USER/.config/nvim nvim
mkdir -p ~/.config/nvim/ftplugin && stow --target=/Users/$USER/.config/nvim/ftplugin nvim-ftplugin
```

This will automatically symlink all contents in configs to `~/.config` and add the custom config dir to NvChad.
