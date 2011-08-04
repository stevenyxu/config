set nocompatible
filetype off

set rtp+=$HOME/config/vim/

colorscheme wombat

" Set indent options
set autoindent
set smartindent

" Set tab options
set tabstop=2
set shiftwidth=2
set softtabstop=4
set expandtab
set tabstop=8

" Show search matches
set showmatch

" Add rule
set ruler

" Set incremental search
set incsearch

" Sets how many lines of history VIM has to remember
set history=700

" Turn syntax highlighting on
syntax on

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set backup and swapfile options
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set rtp+=$HOME/config/vim/vundle/
call vundle#rc()

Bundle 'https://github.com/tpope/vim-rails.git'
Bundle 'https://github.com/kchmck/vim-coffee-script.git'
Bundle 'https://github.com/tpope/vim-haml.git'
