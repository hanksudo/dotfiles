if [ ! -d ~/.oh-my-zsh ]
then
    echo "Installing oh-my-zsh ..."
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi

if [ -d "$HOME/.dotfiles" ]; then
    echo "=> dotfiles is already installed in $HOME/.dotfiles, trying to update"
    echo -ne "\r=> "
    cd $HOME/.dotfiles && git pull
else
    echo "Clone dotfiles from Github..."
    git clone https://github.com/hankwang/dotfiles.git $HOME/.dotfiles
    cd $HOME/.dotfiles    
fi


script/bootstrap
