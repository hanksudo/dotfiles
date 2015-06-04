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

# Homebrew - The missing package manager for OS X
# http://brew.sh/
if ! type brew > /dev/null; then
    echo "=> Installing homebrew ..."
    echo -ne "\r=> "
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "=> homebrew exists, updating ..."
    echo -ne "\r=> "
    brew update
fi
echo "\r"

# CocoaPods is the dependency manager for Objective-C projects
# http://cocoapods.org/
if ! type pod > /dev/null; then
    echo "=> Installing cocoapods ..."
    echo -ne "\r=> "
    sudo gem install cocoapods
else
    echo "=> cocoapods already exists, if you need update, execute \n $ sudo gem install cocoapods"
    echo -ne "\r=> "
    # sudo gem install cocoapods
fi
echo "\r"

# install vim
# https://github.com/hanksudo/vimrc
curl -L https://raw.github.com/hanksudo/vimrc/master/install.sh | sh
echo "\r"

$HOME/.dotfiles/script/bootstrap

