set nocompatible

filetype off

source $HOME/config/vim/colors/wombat.vim
source $HOME/config/vim/eol.vim
if filereadable('/usr/share/vim/google/google.vim')
  source /usr/share/vim/google/google.vim
endif

set guifont=Monospace\ 9

set rtp+=$HOME/config/vim

set rtp+=$HOME/config/vim/autoload
call plug#begin()
Plug 'digitaltoad/vim-jade'
Plug 'editorconfig/editorconfig-vim' " editorconfig.org
Plug 'jelera/vim-javascript-syntax'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' } " File globber
Plug 'tpope/vim-endwise' " Add end to if blocks automatically
Plug 'tpope/vim-sensible' " Sensible defaults
Plug 'tpope/vim-surround' " Actions based on surroundings cs\"'
Plug 'leafgarland/typescript-vim' " Typescript
call plug#end()

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
au FocusGained,BufEnter * :silent! !

" Set backup and swapfile options
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set guioptions-=T
set guioptions-=Line
set guioptions-=l
set guioptions-=r
set guioptions-=R

set cul

" Hyphens are parts of words
set iskeyword+=-

" Useful aliases
map //  :nohlsearch<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap jj <Esc>

syntax on
filetype plugin indent on

" Custom filetypes
au BufRead,BufNewFile *.as set filetype=actionscript
au BufNewFile,BufRead *.phtml set filetype=phtml " PHP overrides this for some dumb reason. PHTML has better formatting.

let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=20000
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/](node_modules|tmp|dist|shop\/var|(\.(git|hg|svn|tmp)))$',
      \ 'file': '\v\.(png|jpg|gif|jpeg|zip|tiff|pdf|swf)$',
      \ }
let g:ctrlp_user_command = {
	\ 'types': {
		\ 1: ['.git', 'cd %s && git ls-files --exclude-standard -co | grep -v "\\.\\(jpg\|gif\|png\|jpeg\|pdf\|tiff\\)$" | grep -v "^shop/var" | grep -v "^boss/expressionengine/templates"'],
		\ 2: ['.hg', 'hg --cwd %s locate -I .'],
		\ },
	\ 'fallback': 'find %s -type f'
	\ }

" Indentation traversal
" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
  let line = line('.')
  let column = col('.')
  let lastline = line('$')
  let indent = indent(line)
  let stepvalue = a:fwd ? 1 : -1
  while (line > 0 && line <= lastline)
    let line = line + stepvalue
    if ( ! a:lowerlevel && indent(line) == indent ||
          \ a:lowerlevel && indent(line) < indent)
      if (! a:skipblanks || strlen(getline(line)) > 0)
        if (a:exclusive)
          let line = line - stepvalue
        endif
        exe line
        exe "normal " column . "|"
        return
      endif
    endif
  endwhile
endfunction

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> ]k :call NextIndent(0, 0, 0, 1)<CR>
nnoremap <silent> ]j :call NextIndent(0, 1, 0, 1)<CR>
nnoremap <silent> [k :call NextIndent(0, 0, 1, 1)<CR>
nnoremap <silent> [j :call NextIndent(0, 1, 1, 1)<CR>
vnoremap <silent> ]k <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]j <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [k <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> [j <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> ]k :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]j :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [k :call NextIndent(0, 0, 1, 1)<CR>
onoremap <silent> [j :call NextIndent(0, 1, 1, 1)<CR>
