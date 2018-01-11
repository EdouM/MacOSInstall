#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.


# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

FORMULAS=(
    coreutils
    ffmpeg
    git
    numpy
    python3
    wget
    youtube-dl
    zsh
)

CASKS=(
    1password
    adobe-photoshop-lightroom
    alfred
    atom
    bettertouchtool
    dropbox
    docker
    evernote
    expressvpn
    flux
    google-chrome
    iterm2
    skype
    slack
    steam
    telegram
    the-unarchiver
    vlc
    xquartz
)

brew install ${FORMULAS[@]}

#brew update

brew cask install --appdir="/Applications" ${CASKS[@]}

brew cleanup

brew cask cleanup
