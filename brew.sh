#!/usr/bin/env bash
# Install command-line tools using Homebrew.

if ! type "brew" > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

brew tap caskroom/cask
brew tap homebrew/cask-fonts

brew install coreutils
brew install elixir
brew install gcc
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install openssl
brew install node
brew install readline
brew install p7zip
brew install pipenv
brew install postgresql
brew install pyenv
brew install rbenv
brew install unrar
brew install tree
brew install wget
brew install yarn
brew install youtube-dl
brew install zlib

brew cask install 1password
brew cask install dropbox

# brew cask install android-sdk
# brew cask install homebrew/cask-versions/java8

# brew cask install db-browser-for-sqlite
# brew cask install firefox
# brew cask install ghost
# brew cask install google-chrome
# brew cask install grammarly
# brew cask install keka
# brew cask install handbrake
# brew cask install slack
# brew cask install steam
# brew cask install spotify
# brew cask install mounty
# brew cask install postico
# brew cask install sequel-pro
# brew cask install tower
# brew cask install transmit
# brew cask install transmission
# brew cask install twist
# brew cask install typora
# brew cask install vlc
# brew cask install vscode
# brew cask install waterfox

brew cleanup
