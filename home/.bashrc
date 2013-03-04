if [ -f /etc/bashrc ]; then
        . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

alias l='ls --color=auto'
alias sl='ls --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias lt='ls -ltr --color=auto'
alias 'cd..'='cd ..'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias diff='colordiff'

if [ "$DISPLAY" ]
then
    EDITOR=gvim
    GIT_EDITOR=vim
    alias vi=gvim
else
    EDITOR=vim
    GIT_EDITOR=vim
    alias vi=vim
fi

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

TIMEFORMAT=$'\n%2lR\t%P%%'
export LINES
export COLUMNS

export PAGER=less
export LESS="iMQRS"

function init_vundle() 
{
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall
}
export -f init_vundle

source .bash_prompt

if [[ -f $HOME/.bashrc_local ]]; then
    . $HOME/.bashrc_local
fi
