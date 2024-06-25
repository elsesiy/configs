fish_config theme choose "Catppuccin Mocha"

# path
fish_add_path ~/.krew/bin
eval (brew shellenv)

# global opts
set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings
set -Ux EDITOR nvim
set -Ux LANG en_US.UTF-8
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

# load utils
rbenv init - | source
zoxide init fish | source

if status is-interactive
    eval (zellij setup --generate-auto-start fish | string collect)
end
