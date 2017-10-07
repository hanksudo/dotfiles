# Dotfiles

```
 ██░ ██  ▄▄▄       ███▄    █  ██ ▄█▀  ██████  █    ██ ▓█████▄  ▒█████  
▓██░ ██▒▒████▄     ██ ▀█   █  ██▄█▒ ▒██    ▒  ██  ▓██▒▒██▀ ██▌▒██▒  ██▒
▒██▀▀██░▒██  ▀█▄  ▓██  ▀█ ██▒▓███▄░ ░ ▓██▄   ▓██  ▒██░░██   █▌▒██░  ██▒
░▓█ ░██ ░██▄▄▄▄██ ▓██▒  ▐▌██▒▓██ █▄   ▒   ██▒▓▓█  ░██░░▓█▄   ▌▒██   ██░
░▓█▒░██▓ ▓█   ▓██▒▒██░   ▓██░▒██▒ █▄▒██████▒▒▒▒█████▓ ░▒████▓ ░ ████▓▒░
 ▒ ░░▒░▒ ▒▒   ▓▒█░░ ▒░   ▒ ▒ ▒ ▒▒ ▓▒▒ ▒▓▒ ▒ ░░▒▓▒ ▒ ▒  ▒▒▓  ▒ ░ ▒░▒░▒░ 
 ▒ ░▒░ ░  ▒   ▒▒ ░░ ░░   ░ ▒░░ ░▒ ▒░░ ░▒  ░ ░░░▒░ ░ ░  ░ ▒  ▒   ░ ▒ ▒░ 
 ░  ░░ ░  ░   ▒      ░   ░ ░ ░ ░░ ░ ░  ░  ░   ░░░ ░ ░  ░ ░  ░ ░ ░ ░ ▒  
 ░  ░  ░      ░  ░         ░ ░  ░         ░     ░        ░        ░ ░  
                                                       ░               
```

## Screenshot

![](https://github.com/hanksudo/dotfiles/blob/master/screenshots/terminal.png)

## Install

    ```
    sudo softwareupdate -i -a
    xcode-select --install
    ```

    ```
    curl -L https://raw.github.com/hanksudo/dotfiles/master/install.sh | sh
    ```

## OSX and Terminal Settings

    ~/.dotfiles/script/osx

Sometimes work not well, set Terminal Preferences by yourself:

- Import `terminal/hanksudo.terminal` then set to default.
- Set Fonts `PTMono`/ Font Size: `15pt`.

## Note

- [homebrew - The missing package manager for OS X](http://brew.sh/)
- [autojump - a faster way to navigate your filesystem](https://github.com/joelthelion/autojump) - use `j folderName` jump to your frequency use folder.
- [git-extras](https://github.com/visionmedia/git-extras) - GIT utilities
- Use [PTMono Fonts](http://www.paratype.com/public/)
- [n - Node version management](https://github.com/tj/n)
- [HTTPie: a CLI, cURL-like tool for humans](https://github.com/jakubroztocil/httpie)
- [ack 2.0 is a greplike tool optimized for programmers searching large heterogeneous trees of source code.](https://github.com/petdance/ack2)
- [thefuck - Magnificent app which corrects your previous console command.](https://github.com/nvbn/thefuck)
- [A command-line fuzzy finder written in Go](https://github.com/junegunn/fzf)

## Extra alias & functions

- Git alias inside **git/gitconfig**
- [zmv](http://zshwiki.org/home/builtin/functions/zmv) - zmv is a module that allow people to do massive rename.
- Use **gls(coreutils)** instead of ls.
- **lsd** - list only directories
- **hosts** - Quick edit /etc/hosts
- **sshc** - Quick edit ~/.ssh/config
- **emptytrash** - Empty the Trash on all mounted volumes and the main HDD
- **c** - `cat` with beautiful colors. requires Pygments installed.
![](https://github.com/hanksudo/dotfiles/blob/master/screenshots/c.png)

- **ccat** Colorizing `cat` (https://github.com/jingweno/ccat)
- **ip** - detect IP by remote server
- **localip** - local ip
- **ips** - IPv4 IPs
- **ports** - list all listening ports (sudo required)
- **whois** - Enhanced WHOIS lookups
- **gz** - get gzipped size
- **extract** - Extract archives - use: extract <file>
- **mkcd** - Make dir and cd into.
- **server** - Start an HTTP server from a directory, optionally specifying the port.

## Sublime Text 3 Packages

- [Anaconda](https://github.com/DamnWidget/anaconda)
- [AutoFileName](https://github.com/BoundInCode/AutoFileName)
- Babel
- BracketHighlighter
- [DashDoc: Dash integration for Sublime Text](https://github.com/farcaller/DashDoc)
- Dockerfile Syntax Highlighting
- EditorConfig
- EJS
- [Emmet](https://github.com/sergeche/emmet-sublime)
- [GitCommitMsg](https://github.com/cbumgard/GitCommitMsg)
- GitGutter
- GoSublime
- Hayaku - tools for writing CSS faster
- Jade
- JsFormat
- Mako
- [Markdown Preview](https://github.com/revolunet/sublimetext-markdown-preview)
- [MarkdownEditing](https://github.com/SublimeText-Markdown/MarkdownEditing)
- [Package Control](https://github.com/wbond/package_control)
- [PlainTasks](https://github.com/aziz/PlainTasks)
- Pretty JSON
- requirementstxt
- Sass
- [SQLExec](https://github.com/jum4/sublime-sqlexec)
- SublimeLinter
- SublimeLinter-contrib-eslint
- [Theme - Spacegray](https://github.com/kkga/spacegray)
- [TodoReview](https://github.com/jonathandelgado/SublimeTodoReview)

## .zsh-theme

Based on [paulmillr](https://github.com/paulmillr/dotfiles)'s .zsh-theme.

## Command lines for fun

- pom
- fortune
- sl
