# Dotfiles


## Screenshot

<img src="http://i.imgur.com/vzftD0D.png">


## Install

```
curl -L https://raw.github.com/hankwang/dotfiles/master/install.sh | sh
```

## Note

* [homebrew - The missing package manager for OS X](http://brew.sh/)
* [autojump - a faster way to navigate your filesystem](https://github.com/joelthelion/autojump) - use `j folderName` jump to your frequency use folder.
* Use [PTMono Fonts](http://www.paratype.com/public/)
* Installed NVM ( [Node Version Manager](https://github.com/creationix/nvm) )
* Installed RVM ( [Ruby enVironment Manager](https://github.com/wayneeseguin/rvm) )

## Extra alias & functions

* Git alias inside **git/gitconfig**
* [zmv](http://zshwiki.org/home/builtin/functions/zmv) - zmv is a module that allow people to do massive rename.
* Use **gls(coreutils)** instead of ls. ( `$ brew install coreutils` )
* **lsd** - list only directories
* **hosts** - Quick edit /etc/hosts
* **emptytrash** - Empty the Trash on all mounted volumes and the main HDD
* **c** - `cat` with beautiful colors. requires Pygments installed.
<img src="http://i.imgur.com/lUdmw87.png">

* **ip** - detect IP by remote server
* **localip** - local ip
* **ips** - IPv4 IPs
* **whois** - Enhanced WHOIS lookups
* **gz** - get gzipped size
* **extract** - Extract archives - use: extract <file>
* **mkcd** - Make dir and cd into.
* **server** - Start an HTTP server from a directory, optionally specifying the port.

## Terminal Settings

	$ ~/.dotfiles/script/osx
	
Sometimes work not well, set Terminal Preferences yourself.

* Import terminal/hankwang.terminal then set to default.
* Set Fonts PTMono/ Font Size: 15pt.

## .zsh-theme

Refer [paulmillr](https://github.com/paulmillr/dotfiles)'s .zsh-theme, and minor changes.