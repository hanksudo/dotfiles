# Dotfiles

```bash
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

![screenshot1](./screenshots/terminal.png)
![screenshot2](./screenshots/weather.png)

## Install

```bash
sudo softwareupdate -i -a
xcode-select --install
```

```bash
curl -L https://raw.github.com/hanksudo/dotfiles/master/install.sh | sh
```

Set Git user info if you use gitconfig

```bash
git config --global user.signingkey XXXXXXX
git config --global user.email your-email-address
git config --global user.name "You Name"
```

## OSX and Terminal Settings

```bash
~/.dotfiles/osx
```

## Note

- [homebrew - The missing package manager for OS X](http://brew.sh/)
- [ack 2.0 is a greplike tool optimized for programmers searching large heterogeneous trees of source code.](https://github.com/petdance/ack2)
- [autojump - a faster way to navigate your filesystem](https://github.com/joelthelion/autojump) - use `j folderName` jump to your frequency use folder.
- [git-extras](https://github.com/visionmedia/git-extras) - GIT utilities
- Use [PTMono Fonts](http://www.paratype.com/public/)
- [HTTPie: a CLI, cURL-like tool for humans](https://github.com/jakubroztocil/httpie)
- [thefuck - Magnificent app which corrects your previous console command.](https://github.com/nvbn/thefuck)
- [A command-line fuzzy finder written in Go](https://github.com/junegunn/fzf)

## Extra alias & functions

- Git alias inside **git/gitconfig**
- [zmv](http://zshwiki.org/home/builtin/functions/zmv) - zmv is a module that allow people to do massive rename.
- Use **gls(coreutils)** instead of ls.
- **doctoc** - Generates table of contents for markdown files inside local git repository
- **lsd** - list only directories
- **hosts** - Quick edit /etc/hosts
- **sshc** - Quick edit ~/.ssh/config
- **emptytrash** - Empty the Trash on all mounted volumes and the main HDD
- **ccat** Colorizing `cat` (https://github.com/jingweno/ccat)
- **ip** - detect IP by remote server
- **localip** - local ip
- **ips** - IPv4 IPs
- **image** - Search on Google Image
- **ports** - list all listening ports (sudo required)
- **whois** - Enhanced WHOIS lookups
- **gz** - get gzipped size
- **extract** - Extract archives - use: `extract <file>`
- **mkcd** - Make dir and cd into.
- **map** - Search on Google Map
- **titler** - Auto copy web title and url as specific format
- **pip-purge** - Purge all Python packges
- **pip3-purge** - Purge all Python3 packges
- **weather** - Show weather
- **server** - Start an HTTP server from a directory, optionally specifying the port.
- **serve** - Serve static files

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
- [TodoReview](https://github.com/jonathandelgado/SublimeTodoReview)

## Export VSCode extensions

```bash
code --list-extensions > vscode.extensions
```

## Export NPM packages list

```bash
npm ls -g --depth=0
```

## Command lines for fun

```bash
fortune
sl
cowsay お元気ですか？
```

## References

- [GitHub does dotfiles - dotfiles.github.io](http://dotfiles.github.io/)
- [GitHub - drduh/macOS-Security-and-Privacy-Guide: A practical guide to securing macOS.](https://github.com/drduh/macOS-Security-and-Privacy-Guide)
