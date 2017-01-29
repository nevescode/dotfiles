#!/bin/bash
echo ">>>"
echo ">>> Configuring git."
echo ">>>"

git config --global user.name "Tiago Neves"
git config --global user.email "tiagodearaujoneves@gmail.com"
git config --global alias.changelog 'log --oneline --abbrev-commit --no-merges'
git config --global alias.graph "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(yellow)%h%C(reset) %s%C(reset) %C(dim white)<%an>%C(reset) %C(bold blue)%ar%C(reset)%C(bold yellow)%d%C(reset)'"
git config --global color.ui true
git config --global core.editor "vim"
git config --global push.default simple
git config --global pull.rebase true

echo ">>>"
echo ">>> Applied git configurations."
echo ">>>"
