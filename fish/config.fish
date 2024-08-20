if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    nf # Run Fastfetch
end

alias nf="fastfetch"
alias ff="fastfetch"
alias neofetch="fastfetch"
alias ls="ls -lh"
alias hx="helix"

# set -U EDITOR helix
set -U EDITOR nvim

function fish_title
    echo Arch » $USER
end

fish_add_path /home/uirian/.local/bin/
fish_add_path ~/.config/emacs/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# starship
starship init fish | source

# Start Emacs server
# /usr/bin/emacs --daemon
