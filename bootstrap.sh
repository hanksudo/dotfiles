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

echo "=> Copying .zshrc ..."
cp -f zsh/zshrc ~/.zshrc

echo "=> Copying .tmux.conf ..."
cp -f zsh/tmux.conf ~/.tmux.conf

echo "=> Copying .functions ..."
cp -f zsh/functions ~/.functions

echo "=> Copying .zprofile ... (if not exists)"
cp -n zsh/zprofile ~/.zprofile

echo "=> Copying .aliases ... "
cp -n zsh/aliases ~/.aliases

echo "=> Copying .pythonrc"
cp -n zsh/pythonrc ~/.pythonrc

echo "=> Copying Ghostty config ..."
mkdir -p ~/.config/ghostty
cp -f ghostty.config ~/.config/ghostty/config

echo "=> Copying starship.toml ..."
mkdir -p ~/.config
cp -f starship.toml ~/.config/starship.toml

echo
sw_vers
echo
brew --version
python3 --version
echo "node $(node --version)"
go version
rustc -V
echo
echo "All done!"
