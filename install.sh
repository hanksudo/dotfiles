#!/bin/sh
if [ ! -d ~/.oh-my-zsh ]
then
    echo "=> Installing oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ -d "$HOME/.dotfiles" ]; then
    echo "=> dotfiles is already installed in $HOME/.dotfiles, trying to update"
    echo -ne "\r=> "
    cd $HOME/.dotfiles && git pull
else
    echo "=> clone dotfiles from Github..."
    git clone https://github.com/hanksudo/dotfiles.git $HOME/.dotfiles
    cd $HOME/.dotfiles
fi
echo "\r"

$HOME/.dotfiles/brew.sh
$HOME/.dotfiles/pip.sh
$HOME/.dotfiles/vscode-extensions.sh
$HOME/.dotfiles/bootstrap.sh
