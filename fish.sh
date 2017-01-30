#!/usr/bin/env bash

echo ">>>"
echo ">>> Setup fish"
echo ">>>"

mkdir -p $HOME/.config/fish/functions/
echo "
### nevescode/dotfiles

set -x NODE_ENV development
set PATH (yarn global bin) \$PATH

# FileSystem
alias wp='cd ~/workspace'
alias ll='ls -alG'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'

# Git
alias gs='git status'
alias gd='git diff'
alias ga='git add . --all'
alias gcm='git checkout master'
alias vai='git push'
alias vem='git pull --rebase'
alias gc='git commit -m '
alias jogafora='git stash save --keep-index; git stash drop'
alias ajeita='git rebase master'

# NPM
alias liga='npm start'

# VTEX
alias locksmith='py ~/workspace/locksmith/locksmith/main.py'

# System
alias flushdns='sudo killall -HUP mDNSResponder'

# Hosts
alias hosts='code /etc/hosts'

set -g theme_nerd_fonts yes
set -g theme_title_use_abbreviated_path no
set -g theme_color_scheme base16
set -g theme_display_date no

### nevescode/dotfiles
" >> ~/.config/fish/config.fish

echo ">>>"
echo ">>> Installing fisherman"
echo ">>>"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo ">>>"
echo ">>> Installing bobthefish"
echo ">>>"
fisher omf/theme-bobthefish

echo ">>>"
echo ">>> Installing vtex-fish"
echo ">>>"
fisher vtex/vtex-fish

echo ">>>"
echo ">>> Copy fish_prompt"
echo ">>>"
cp ../setup/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish

sudo bash -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

echo ">>>"
echo ">>> Configured fish as default terminal."
echo ">>>"
