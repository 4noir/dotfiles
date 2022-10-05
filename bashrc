# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# EPITA-specific
if [ -d ~/afs ]
then
    setxkbmap us
    if [ -d ~/afs/bin ] ; then
        export PATH=~/afs/bin:$PATH
    fi

    if [ -d ~/.local/bin ] ; then
        export PATH=~/.local/bin:$PATH
    fi
fi

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=nvim

# Color support for less
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias ls='ls --color=auto'
alias grep='grep --color -n'
alias rm='rm -i'
alias vim='nvim'
PS1='[\u@\h \W]\$ '

alias pisc_push='~/.scripts/pisc_push.sh'
alias gcc='gcc -o main -pedantic -std=c99 -Wall -Wextra -g -fsanitize=address'
