#!/bin/sh
# change shell to zsh
if [ "$SHELL" != '/bin/zsh' ]; then
    echo "$SHELL"
    chsh -s /bin/zsh
fi

# main program
echo "=> This will install the files to: ${HOME}"
echo "=>"

# git config --global user.signingkey GPG_KEY
# git config --global user.email EMAIL
# git config --global user.name NAME
echo "=> Copying Git Configurations ..."
cp git/gitconfig ~/.gitconfig
cp git/git-global-ignore ~/.git-global-ignore
cp git/git-global-attributes ~/.git-global-attributes

which git-pr && rm "$(which git-pr)"  # Remove git-pr, which broken my alias `git pull --rebase`

echo "=> Copying PTMono fonts ..."
cp -rf fonts/PTMono/*ttf ~/Library/Fonts/

echo "=> Copying PTMono fonts ..."
cp -rf fonts/Source_Code_Pro/*ttf ~/Library/Fonts/

echo "=> Copying .zsh-theme ..."
cp -f theme/hanksudo.zsh-theme ~/.oh-my-zsh/themes/

echo "=> Copying .zshrc ..."
cp -f zsh/zshrc ~/.zshrc

echo "=> Copying .tmux.conf ..."
cp -f zsh/tmux.conf ~/.tmux.conf

echo "=> Copying .functions ..."
cp -f zsh/functions ~/.functions

echo "=> Copying .zprofile ... (if not exists)"
cp -n zsh/zprofile ~/.zprofile

echo "=> Copying Spectacle conf ..."
cp -f ~/.dotfiles/conf/Spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json

# zsh plugin
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]
then
    echo "=> Installing zsh-syntax-highlighting ..."
    echo "=> "
    git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]
then
    echo "=> Installing zsh-autosuggestions ..."
    echo "=> "
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

echo
sw_vers
echo
brew --version
python2 --version
python3 --version
ruby --version
echo "node $(node --version)"
go version
rustc -V
echo
echo "All done!"
