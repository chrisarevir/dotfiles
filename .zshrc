## oh-my-zsh

export ZSH=/Users/christian/.oh-my-zsh

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

## aliases

alias cat='bat'
alias gg='git for-each-ref --count=10 --sort=-committerdate --format="%(refname:short)" refs/heads/'
alias ls='colorls'

## asdf

. $HOME/.asdf/asdf.sh

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit

## colorls

source $(dirname $(gem which colorls))/tab_complete.sh
