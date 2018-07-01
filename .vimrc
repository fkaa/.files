set nocompatible
filetype off

"setup paths for temporary files (backup/swap/undo)
set backupdir-=.
set backupdir+=.
set backupdir-=$HOME/
set backupdir^=$HOME/.vim/tmp/backup//
set backup

set directory=$HOME/.vim/tmp/swap//
set directory+=.

set undodir=$HOME/.vim/tmp/undo//
set undofile

set viminfo+=n$HOME/.vim/tmp/viminfo

"setup Vundle
set rtp+=$HOME/.vim/
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

"setup plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ludovicchabant/vim-gutentags'

"file syntax
Plugin 'cespare/vim-toml'
Plugin 'beyondmarc/hlsl.vim'

call vundle#end()
filetype plugin indent on

"plugin-specific
map /  <Plug>(incsearch-forward)

"turn on syntax highlighting
syntax on

"switch buffers without saving
set hidden

"make searching case-insensitive
set ignorecase
set smartcase

set encoding=utf-8

"leader key on spacebar
let mapleader = " "

"navigate results in quickfix results
nmap <leader>j :cn<CR>
nmap <leader>k :cp<CR>

let g:ctrlp_map = '<c-k>'
nnoremap <c-t> :CtrlPTag<CR>

"enter/shift-enter inserts newline before/after
nmap <S-Enter> O<ESC>
nmap <CR> o<ESC>

"dumb, but <CR> newline is so nice
noremap <leader><CR> <CR>

"toggle display of list characters
nnoremap <F3> :set list!<CR>

nnoremap K <PageUp>
nnoremap J <PageDown>

"`normal` backspace behavior
set backspace=indent,eol,start

"sane indenting setting
set autoindent    "copies indentation settings from current line
set smarttab      "indentation based on `shiftwidth`

set tabstop=4     "tabs display size
set shiftwidth=4  "indent width
set softtabstop=4 "logical width for tabs
set expandtab     "replace tab with spaces

"show search results while searching
set incsearch

"persistent highlighting for search results
set hlsearch

"always leave a gap after cursor
set scrolloff=3

"show completion suggestions for command-line (in vim)
set wildmenu

"show status line for each window (always)
set laststatus=2

"shows line number in status line
set ruler

"makes long lines not get hidden with `@`
set display+=lastline

"list characters
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

"custom statusline, shows git branch, file type, line number
set statusline=%f\ %m%=%{fugitive#statusline()}\ (%{strlen(&ft)?&ft:'?'},%{&ff})\ \ %-9.(%l,%c%V%)\ \ %<%P

set tags=./.tags,.tags;

let g:gutentags_ctags_tagfile = '.tags'

"color theme
set background=light
color holy 
