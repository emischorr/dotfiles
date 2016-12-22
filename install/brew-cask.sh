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
  osxfuse
)

brew cask install "${apps[@]}"

brew install homebrew/fuse/ntfs-3g
