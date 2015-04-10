#
# My simple terminal theme.
#
# dotfiles ❯ (default)
# dotfiles git:master ❯ (in git repository)
# root@serv dotfiles git:master ❯ (with SSH)
#
# Authors:
#   based on Paul Miller's zsh-theme
#


vcs_info=''

function prompt_hanksudo_precmd {
  setopt LOCAL_OPTIONS
  unsetopt XTRACE KSH_ARRAYS
}

function list-files {
  echo `script -q /dev/null ls -G . | tr -d '\r' | cat`
}

function get-vcs-info {
  vcs_info=''
  git rev-parse --is-inside-work-tree &>/dev/null || return

  local ref=$(git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')
  if [[ -z "$ref" ]]; then
    vcs_info=''
  else
    st=`git diff --quiet --ignore-submodules HEAD &>/dev/null`;
    if [[ $? -eq 1 ]]; then
      vcs_info=" %F{blue}git%f:%F{magenta}${ref#refs/heads/}*%f"
    else
      vcs_info=" %F{blue}git%f:%F{red}${ref#refs/heads/}%f"
    fi
  fi
}

function prompt_hanksudo_setup {
  setopt LOCAL_OPTIONS
  unsetopt XTRACE KSH_ARRAYS
  prompt_opts=(cr percent subst)

  autoload -Uz add-zsh-hook
  add-zsh-hook precmd get-vcs-info
  add-zsh-hook chpwd list-files
  add-zsh-hook chpwd get-vcs-info

  PROMPT='%F{yellow}%T %F{magenta}${SSH_TTY:+%n@%m }%F{cyan}%1~%f${vcs_info} %(!.%B%F{red}#%f%b.%B%F{green}❯%f%b) '
  RPROMPT=''
  SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '
}

prompt_hanksudo_setup "$@"

