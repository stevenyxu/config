set nocompatible

filetype off

source $HOME/config/vim/colors/wombat.vim
source $HOME/config/vim/pathogen.vim

set guifont=Monospace\ 9

set rtp+=$HOME/config/vim/

" Set indent options
set autoindent
set smartindent
set list

" Set tab options
set tabstop=2
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Show search matches
set showmatch
set hlsearch

" Line numbering
set number

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

set guioptions-=T
set guioptions-=L
set guioptions-=l
set guioptions-=r
set guioptions-=R

set cul

" Useful aliases
map //  :nohlsearch<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap jj <Esc>

call pathogen#infect('~/config/vim/bundle')
syntax on
filetype plugin indent on

" Custom filetypes
au BufRead,BufNewFile *.as set filetype=actionscript
