#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    0xed
    alfred
    android-studio
    appcleaner
    bartender
    charles
    disk-inventory-x
    firefox
    gfxcardstatus
    google-chrome
    google-backup-and-sync
    hammerspoon
    handbrake
    hipchat
    istat-menus
    iterm2
    java
    jetbrains-toolbox
    macdown
    sourcetree
    spotify
    sublime-text
    the-unarchiver
    ubersicht
    vlc
)

for i in "${apps[@]}"; do
    brew cask search $i 2>&1 && brew cask install $i --appdir=/Applications
done

#brew cask install "${apps[@]}" --appdir=/Applications

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
