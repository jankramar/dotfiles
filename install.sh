#!/bin/bash

echo "Starting...."

# Homebrew
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade
brew tap homebrew/bundle
brew bundle
brew cleanup

# ZSH
chsh -s $(which zsh)

# Sites directory
mkdir $HOME/Sites

