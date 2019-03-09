#!/bin/sh

# code --list-extensions
cat vscode.extensions | xargs -L 1 code --install-extension
