#!/bin/bash
if ! [ -x "$(command -v mas)" ]; then
      echo 'MAS not installed' >&2
      return 1
fi

appIds=(
  1054607607 #Helium
  1037126344 #Apple Configurator 2
  497799835 #Xcode
  425424353 #The Unarchiver
  409183694 #Keynote
  406056744 #Evernote
  1160374471 #PiPifier
  472226235 #LanScan
  552383089 #Dashlane
  568494494 #Pocket
  967805235 #Paste
  409201541 #Pages
  747482894 #WebDAVNavServer
  734418810 #SSH Tunnel
)


echo "Apple ID: "
read EMAIL

mas signin EMAIL

unset EMAIL

for i in ${appIds[@]}; do
  mas install $i
done