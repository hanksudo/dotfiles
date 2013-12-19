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
    git clone https://github.com/hankwang/dotfiles.git $HOME/.dotfiles
    cd $HOME/.dotfiles
fi

# Homebrew - The missing package manager for OS X
# http://brew.sh/
if ! type brew > /dev/null; then
    echo "=> Installing homebrew ..."
    echo -ne "\r=> "
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
else
    echo "=> homebrew exists, updating ..."
    echo -ne "\r=> "
    brew update
fi

# git-extras
# https://github.com/visionmedia/git-extras
if ! type git-extras > /dev/null; then
    echo "=> Installing git-extras ..."
    echo -ne "\r=> "
    (cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)
fi

$HOME/.dotfiles/script/bootstrap
