### nevescode/dotfiles

set -x NODE_ENV development
# set PATH (yarn global bin) \$PATH

# FileSystem
alias wp='cd ~/workspace'
alias voa='cd ~/workspace/voa'
alias dotfiles='cd ~/workspace/utils/dotfiles'
alias ll='ls -alG'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'

# Git
alias gs='git status'
alias gd='git diff'
alias ga='git add . --all'
alias gcm='git checkout master'
alias gcb='git checkout beta'
alias vai='git push'
alias vem='git pull --rebase'
alias gc='git commit -m '
alias jogafora='git stash save --keep-index; git stash drop'
alias ajeita='git rebase master'

# NPM
alias liga='npm start'

# System
alias flushdns='sudo killall -HUP mDNSResponder'

# Hosts
alias hosts='code /etc/hosts'

set -g theme_nerd_fonts yes
set -g theme_title_use_abbreviated_path no
set -g theme_display_date no
set -g theme_color_scheme dark

alias dotfiles-refresh='cp ~/workspace/utils/dotfiles/config.fish ~/.config/fish/config.fish ;; source ~/.config/fish/config.fish'

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

function fish_greeting
  set_color $fish_color_autosuggestion
  echo "The light inside has broken but I still work"
  set_color normal
end

### nevescode/dotfiles