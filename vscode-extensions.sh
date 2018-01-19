#!/bin/sh

# code --list-extensions
<vscode.extensions xargs -I % code --install-extension %
