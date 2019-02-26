#!/bin/sh
alias pip=pip3
# install python packages
echo "=> Installing python packages... "
echo "=> "
pip install -q --upgrade pip setuptools
pip install -qr "$(pwd)/requirements.txt"
