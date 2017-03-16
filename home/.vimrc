set nocompatible

filetype plugin indent on

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " expand tabs to spaces
" set autoindent " copies indentation from previous line. may not be needed.
" set smartindent " interferes with filetype indentation

" ui
set number " show line numbers
set nowrap
set showmatch " show matching {}
set mat=2  " number of tenths of a second to blink when matching brackets

" search
set showmatch
set hlsearch
set ignorecase
set smartcase
set incsearch

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" other
set history=1000
set laststatus=2 " always show the status line
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set backspace=eol,start,indent
abbreviate teh the

" colors
syntax on
set term=xterm-256color
set t_Co=256
set background=dark
colorscheme PaperColor

" backup - disable. use git.
set nobackup
set nowb
set noswapfile

