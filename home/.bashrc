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
alias vi='vim'

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

export EDITOR='vim'
export GIT_EDITOR='vim'

addToPath() {
        dir=${1}

        if [ ! -d "${dir}" ]; then
                logDebug paths: does not exist ${dir}
                return
        fi

        if [ "`doesPathContain ${dir} ${PATH}`" = "true" ]; then
                logDebug paths: already present ${dir}
                return
        fi

        logDebug paths: adding ${dir}

        PATH=${PATH}:${dir}
        export PATH
}

initVundle() {
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall
}
