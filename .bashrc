# Just a small one

export HISTSIZE=1000000
export HISTCONTROL=ignoredups:ignorespace
shopt -s globstar
shopt -s histappend
export IFS=$'\n'

# https://github.com/mrzool/bash-sensible/blob/master/sensible.bash

if ((BASH_VERSINFO[0] < 4))
then
  echo "The settings require bash 4. If you're using bash 3 you're going to have a bad time"
fi
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
bind "set mark-symlinked-directories on"
bind Space:magic-space
PROMPT_COMMAND='history -a'
set -o noclobber
shopt -s checkwinsize
shopt -s nocaseglob
shopt -s cmdhist
shopt -s autocd
shopt -s dirspell
shopt -s cdspell
CDPATH=".:~"
shopt -s cdable_vars

export PYTHONDONTWRITEBYTECODE=1
export CLICOLOR=1

function rm {
  echo "rm is not allowed, use tt command to move to trash"
}

alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'
alias du='du -hs'
alias tt='trash'
alias ls='ls --color -1'
alias l='ls --color -Ao -1'
alias be='bundle exec'
alias bi='bundle install'
alias bup='bundle update'
alias gr='pcregrep'
