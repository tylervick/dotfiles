#!/bin/sh

#
# This script configures my Node.js development setup. Note that
# nvm is installed by the Homebrew install script.
#
# Also, I would highly reccomend not installing your Node.js build
# tools, e.g., Grunt, gulp, WebPack, or whatever you use, globally.
# Instead, install these as local devDepdencies on a project-by-project
# basis. Most Node CLIs can be run locally by using the executable file in
# "./node_modules/.bin". For example:
#
#     ./node_modules/.bin/webpack --config webpack.local.config.js
#

# Install nvm manually since they don't support brew - NO

# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

source ~/.zshrc

NODE_VERSION="stable"
mkdir -p $HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


if test ! $(which nvm)
then
  echo "Installing a stable version of Node..."

  # Install the latest stable version of node
  nvm install $NODE_VERSION

  # Switch to the installed version
  nvm use node

  # Use the stable version of node by default
  nvm alias default node
fi

# All `npm install <pkg>` commands will pin to the version that was available at the time you run the command
# npm config set save-exact = true

# Globally install with npm
# To list globally installed npm packages and version: npm list -g --depth=0
#
# Some descriptions:
#
# diff-so-fancy — sexy git diffs
# git-recent — Type `git recent` to see your recent local git branches
# git-open — Type `git open` to open the GitHub page or website for a repository
packages=(
    diff-so-fancy
    git-recent
    git-open
    gulp
    http-server
    npm-check-updates
    webpack
    yo
)

yarn global add "${packages[@]}"


###############################################################################
# Pyenv                                                                       #
###############################################################################

PYTHON_VERSION=3.5.2

if [ -x "$(command -v mackup)" ]; then
  echo "Installing $PYTHON_VERSION"

  # Install specified python version
  pyenv install $PYTHON_VERSION

  # Point Pyenv to newly installed Python
  pyenv global $PYTHON_VERSION

fi


