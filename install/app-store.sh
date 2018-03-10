#!/bin/bash

echo "PLEASE SIGN IN TO THE APP STORE FIRST!"
if ! [ -x "$(command -v mas)" ]; then
      echo 'MAS not installed' >&2
      return 1
fi

appIds=(
  1037126344 #Apple Configurator 2
  497799835 #Xcode
  1160374471 #PiPifier
  967805235 #Paste
  926036361 #LastPass Password Manager
)


# echo "Apple ID: "
# read EMAIL

# mas signin $EMAIL

# unset $EMAIL

for i in ${appIds[@]}; do
  mas install $i
done