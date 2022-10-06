#!/bin/sh
if [ ! -d ~/.oh-my-zsh ]
then
    echo "=> Installing oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ -d "$HOME/.dotfiles" ]; then
    echo "=> dotfiles is already installed in $HOME/.dotfiles, trying to update"
    echo "=> "
    cd "$HOME"/.dotfiles && git pull
else
    echo "=> clone dotfiles from Github..."
    git clone https://github.com/hanksudo/dotfiles.git "$HOME"/.dotfiles
    cd "$HOME"/.dotfiles || exit
fi
echo ""

"$HOME"/.dotfiles/brew.sh
"$HOME"/.dotfiles/pip.sh
"$HOME"/.dotfiles/goinstall.sh
"$HOME"/.dotfiles/vscode-extensions.sh
npm install -g npm
xargs npm i -g < npmfile
"$HOME"/.dotfiles/bootstrap.sh

# SDKMAN
curl -s "https://get.sdkman.io" | bash
