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
    google-drive
    gyazo
    hammerspoon
    intellij-idea
    iterm2
    java
    karabiner-elements
    macdown
    microsoft-office
    namebench
    onyx
    phpstorm
    pycharm
    robomongo
    sequel-pro
    sonos
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
    webstorm
    xquartz
)

brew cask install "${apps[@]}" --appdir=/Applications

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
