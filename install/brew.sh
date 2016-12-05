#!/usr/bin/env bash

########################################################
# install homebrew, homebrew-cask, homebrew bundle ... #
########################################################

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap Homebrew/bundle

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all


#############################
# install homebrew packages #
#############################

apps=(
  htop
  wget
  imagemagick
  openssl
  nginx
  postgresql
  mongodb
  elasticsearch
  ffmpeg
  redis
  nmap
)

brew install "${apps[@]}"

brew cask install atom
brew cask install dropbox
brew cask install google-chrome

# Remove outdated versions from the cellar
brew cleanup
