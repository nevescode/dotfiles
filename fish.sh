#!/usr/bin/env bash

echo ">>>>>>>>>> init fish setup <<<<<<<<<<"

# fish functions
mkdir -p $HOME/.config/fish/functions/

# fish config
cp ./config.fish ~/.config/fish/config.fish 

# omf
curl -L https://get.oh-my.fish | fish
omf install bobthefish

# powerline
pip3 install powerline-status

# fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
# set "Hack Nerd Font" as hyper font manually

# Add fish binaries to etc/shells
sudo bash -c 'echo "/usr/local/bin/fish" >> /etc/shells'

# Configure fish as default terminal
chsh -s /usr/local/bin/fish

echo ">>>>>>>>>> end fish setup <<<<<<<<<<"
