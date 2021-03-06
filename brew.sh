#!/usr/bin/env bash
# Install command-line tools using Homebrew.
echo "==> Homebrew <=="

if ! type "brew" > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

brew tap caskroom/cask
brew tap homebrew/cask-fonts

brew install bash
brew install coreutils
brew install readline
brew install rmtrash
brew install gcc
brew install git
brew install openssl
brew install git-lfs
brew install zlib
brew install imagemagick
brew install elixir
brew install node
brew install p7zip
brew install postgresql
brew install pyenv
brew install rbenv
brew install unrar
brew install tree
brew install wget
brew install yarn
brew install youtube-dl

# brew cask install 1password
# brew cask install dropbox

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
# brew cask install vlc
# brew cask install waterfox

brew cleanup
