set nocompatible

filetype off

source $HOME/config/vim/pathogen.vim

colorscheme wombat
set guifont=Monospace\ 8

set rtp+=$HOME/config/vim/

" Set indent options
set autoindent
set smartindent
set list

" Set tab options
set tabstop=2
set shiftwidth=2
set softtabstop=4
set expandtab
set tabstop=4

" Show search matches
set showmatch
set hlsearch

" Add rule
set ruler

" Set incremental search
set incsearch

" Sets how many lines of history VIM has to remember
set history=700

" Turn syntax highlighting on
syntax on

" Set to auto read when a file is changed from the outside
set autoread

" Set backup and swapfile options
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

call pathogen#infect('~/config/vim/bundle')
syntax on
filetype plugin indent on
