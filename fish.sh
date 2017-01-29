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
alias ga='git add . --all'
alias gcm='git checkout master'
alias vai='git push'
alias vem='git pull --rebase'
alias gc='git commit -m '
alias jogafora='git stash save --keep-index && git stash drop'
alias ajeita='git rebase master'

# NPM
alias liga='npm start'

# VTEX
alias locksmith='py ~/workspace/locksmith/locksmith/main.py'

# System
alias flushdns='sudo killall -HUP mDNSResponder'

# Hosts
alias hosts='code /etc/hosts'

# XCODE
clear_xcode() {
    #Save the starting dir
    startingDir=$PWD

    #Go to the derivedData
    cd ~/Library/Developer/Xcode/DerivedData

    #Sometimes, 1 file remains, so loop until no files remain
    numRemainingFiles=1
    while [ $numRemainingFiles -gt 0 ]; do
        #Delete the files, recursively
        rm -rf *

        #Update file count
        numRemainingFiles=`ls | wc -l`
    done

    echo Done

    #Go back to starting dir
    cd $startingDir
}

### nevescode/dotfiles
" >> ~/.config/fish/config.fish

echo ">>>"
echo ">>> Installing fisherman"
echo ">>>"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

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
