#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  google-chrome
  firefox
  dropbox
  slack
  skype
  atom
  vlc
)

brew cask install "${apps[@]}"
