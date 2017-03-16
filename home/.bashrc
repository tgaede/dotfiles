if [ -f /etc/bashrc ]; then
    . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

if [ "$(uname)" == "Darwin" ]; then
  alias l='ls -G'
  alias sl='ls -G'
  alias ls='ls -G'
  alias ll='ls -lG'
  alias la='ls -laG'
  alias lt='ls -ltrG'
else
  alias ls='ls --color=auto'
  alias l='ls'
  alias sl='ls'
  alias ll='ls -l --color=auto'
  alias la='ls -la --color=auto'
  alias lt='ls -ltr --color=auto'
fi

alias 'cd..'='cd ..'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'

EDITOR=vim
GIT_EDITOR=vim
alias vi=vim

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s extglob
shopt -s histappend
shopt -s nocaseglob
shopt -u mailwarn
shopt -s no_empty_cmd_completion
unset MAILCHECK;

HISTFILE=$HOME/.commandline_history
HISTFILESIZE=500000
HISTSIZE=100000
HISTIGNORE="l[slat]:cls:popd:pwd:clear:reset:exit:cd .."
HISTCONTROL='ignoreboth'

export LINES
export COLUMNS

export PAGER=less
export LESS="iMQRS"

source $HOME/.bashrc_prompt
source $HOME/.bashrc_path
source $HOME/.bashrc_goscript

if [[ -f $HOME/.bashrc_local ]]; then
    . $HOME/.bashrc_local
fi

complete -C aws_completer aws
