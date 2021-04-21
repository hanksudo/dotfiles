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

## MacOS and Terminal Settings

```bash
~/.dotfiles/macos
```

## Note

- [homebrew - The missing package manager for OS X](http://brew.sh/)
- [ack 2.0 is a greplike tool optimized for programmers searching large heterogeneous trees of source code.](https://github.com/petdance/ack2)
- [autojump - a faster way to navigate your filesystem](https://github.com/joelthelion/autojump) - use `j folderName` jump to your frequency use folder.
- [git-extras](https://github.com/visionmedia/git-extras) - GIT utilities
- Use [PTMono Fonts](http://www.paratype.com/public/)
- Use [Source Code Pro Fonts](https://fonts.google.com/specimen/Source+Code+Pro)
- [HTTPie: a CLI, cURL-like tool for humans](https://github.com/jakubroztocil/httpie)
- [thefuck - Magnificent app which corrects your previous console command.](https://github.com/nvbn/thefuck)
- [A command-line fuzzy finder written in Go](https://github.com/junegunn/fzf)

## Applications

- [Alfred - Productivity App for macOS](https://www.alfredapp.com/)
- [iTerm2 - macOS Terminal Replacement](https://www.iterm2.com/)
- [IINA - The modern media player for macOS](https://iina.io/)
- [Notable - The Markdown-based note-taking app that doesn't suck](https://notable.md/)
- [Rectangle: Move and resize windows on macOS with keyboard shortcuts and snap areas](https://github.com/rxhanson/Rectangle)

## Extra alias & functions

- Git alias inside **git/gitconfig**
- **bat** A cat(1) clone with wings (https://github.com/sharkdp/bat)
- Use [**exa**](https://github.com/ogham/exa) instead of ls.
- **doctoc** - Generates table of contents for markdown files inside local git repository
- **lsd** - list only directories
- **hosts** - Quick edit /etc/hosts
- **sshc** - Quick edit ~/.ssh/config
- **emptytrash** - Empty the Trash on all mounted volumes and the main HDD
- **ip** - detect IP by remote server
- **localip** - local ip
- **ips** - IPv4 IPs
- **ports** - list all listening ports (sudo required)
- **whois** - Enhanced WHOIS lookups
- **gz** - get gzipped size
- **extract** - Extract archives - use: `extract <file>`
- **mkcd** - Make dir and cd into.
- **titler** - Auto copy web title and url as specific format
- **pip3-purge** - Purge all Python3 packges
- **image** - Search on Google Image
- **map** - Search on Google Map
- **weather** - Show weather
- **server** - Start an HTTP server from a directory, optionally specifying the port.
- **serve** - Serve static files
- [zmv](http://zshwiki.org/home/builtin/functions/zmv) - zmv is a module that allow people to do massive rename.

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
- [GitHub - jlevy/the-art-of-command-line: Master the command line, in one page](https://github.com/jlevy/the-art-of-command-line)
