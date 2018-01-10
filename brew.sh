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

cd "$(dirname "$0")"

# homebrew packages

TAPS=(
    homebrew/binary
    homebrew/dupes
    homebrew/versions
    homebrew/science
    caskroom/cask
    caskroom/versions
)

FORMULAS=(
    caskroom/cask/brew-cask
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
    alfred
    atom
    bettertouchtool
    dropbox
    docker
    evernote
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
    wireshark
)

for tap in ${TAPS[@]}
do
    brew tap $tap
done

brew install ${FORMULAS[@]}

#brew update

brew cask install --appdir="/Applications" ${CASKS[@]}

brew cleanup

brew cask cleanup