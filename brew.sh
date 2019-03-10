#!/bin/sh

# Homebrew - The missing package manager for OS X
# http://brew.sh/
if ! command -v brew > /dev/null; then
    echo "=> Installing homebrew ..."
    echo "=> "
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew analytics off
    export HOMEBREW_NO_INSECURE_REDIRECT=1
    ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
else
    echo "=> homebrew exists, updating ..."
    echo "=> "
    brew update
    brew upgrade
fi
echo ""
brew bundle -v
brew cleanup
