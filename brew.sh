#!/bin/sh

# Homebrew - The missing package manager for OS X
# http://brew.sh/
if ! type brew > /dev/null; then
    echo "=> Installing homebrew ..."
    echo -ne "\r=> "
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew analytics off
    HOMEBREW_NO_INSECURE_REDIRECT=1
    ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
else
    echo "=> homebrew exists, updating ..."
    echo -ne "\r=> "
    brew update
    brew upgrade
fi
echo "\r"
brew bundle -v
brew link --force curl
brew cleanup
