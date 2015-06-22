if [ ! -d ~/.oh-my-zsh ]
then
    echo "=> Installing oh-my-zsh ..."
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
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

# install vim
# https://github.com/hanksudo/vimrc
echo "=> installing vimrc ..."
curl -L https://raw.github.com/hanksudo/vimrc/master/install.sh | sh
echo "\r"

$HOME/.dotfiles/script/bootstrap

