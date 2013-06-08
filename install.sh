if [ ! -d ~/.oh-my-zsh ]
then
    echo "Installing oh-my-zsh ..."
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi

echo "Clone dotfiles from Github..."
git clone https://github.com/hankwang/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
