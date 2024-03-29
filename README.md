# Configs

Central place to manage my terminal configs such as neovim, zhsrc, etc.

## Pre-requisites

- Install font for icons to work & update terminal accordingly.
Either use `JetBrainsMono` located in `fonts` or browse others [here](https://github.com/ryanoasis/nerd-fonts)
- Install [NvChad](https://github.com/NvChad/NvChad)
- Install [iterm2](https://iterm2.com/)
- Install [Oh My Zsh](https://ohmyz.sh/#install)
- Install [zellij](https://zellij.dev/)

## Usage

I'm using [stow](https://www.gnu.org/software/stow/) to manage my configs via symlinks to this git repo.

From the repo root:

```
stow --target=/Users/$USER/.config configs
mkdir -p ~/.config/nvim/lua/custom && stow --target=/Users/$USER/.config/nvim/lua/custom nvim
mkdir -p ~/.config/nvim/ftplugin && stow --target=/Users/$USER/.config/nvim/ftplugin nvim-ftplugin
```

This will automatically symlink all contents in configs to `~/.config` and add the custom config dir to NvChad.
