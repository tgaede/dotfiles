set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'davidhalter/jedi'
Bundle 'scrooloose/syntastic'
Bundle 'flazz/vim-colorschemes'

syntax on
filetype plugin on
filetype indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set number
set autoindent
set smartindent
set showmatch
set mat=5
set nohlsearch
set history=1000
set novisualbell
set noerrorbells
set laststatus=2
set nowrap
set backspace=2

abbreviate teh the
colorscheme wombat256
