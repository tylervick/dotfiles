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
    disk-inventory-x
    diskmaker-x
    firefox
    gfxcardstatus
    google-chrome
    google-backup-and-sync
    gyazo
    hammerspoon
    iterm2
    java
    jetbrains-toolbox
    karabiner-elements
    macdown
    namebench
    onyx
    pycharm
    robomongo
    robo-3t
    sequel-pro
    sourcetree
    spotify
    sqlitebrowser
    steam
    sublime-text
    the-unarchiver
    transmission
    transmit
    vlc
    vmware-fusion
    xquartz
)

for i in "${apps[@]}"; do
    brew cask search $i 2>&1 && brew cask install $i --appdir=/Applications
done

#brew cask install "${apps[@]}" --appdir=/Applications

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
