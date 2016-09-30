set nocompatible              " be iMproved, required
filetype off                  " required

if has("win32")
    set rtp+=~/vimfiles/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'moll/vim-bbye'
Plugin 'rust-lang/rust.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'cespare/vim-toml'
Plugin 'tikhomirov/vim-glsl'
Plugin 'vimwiki/vimwiki'
Plugin 'Valloric/YouCompleteMe'

set hidden
let g:ycm_rust_src_path = '/Users/fkaa/Code/Rust/rustc-1.8.0/src'
set langmenu=en_US.UTF-8

if has("win32")
    set backupdir=~/vimfiles/backup//
    set directory=~/vimfiles/swap//
    set undodir=~/vimfiles/undo//
else
    set backupdir=~/.vim/backup//
    set directory=~/.vim/swap//
    set undodir=~/.vim/undo//
endif

set exrc
set secure

set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

set laststatus=2
set norelativenumber
set showcmd
set number
set relativenumber
set hidden
set timeoutlen=2500
set hlsearch
set invlist
set backspace=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8
set shell=/bin/bash

au BufRead,BufNewFile *.metal setfiletype cpp

let g:gitgutter_map_keys = 0
let mapleader = " "

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

nmap <leader>t :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>q :Bdelete<CR>
nmap <leader>Q :Bdelete!<CR>
nmap <leader>bl :ls<CR>

nmap <Leader><CR> <Plug>VimwikiFollowLink
nmap <Leader><S-CR> <Plug>VimwikiSplitLink
nmap <Leader>wb <Plug>VimwikiGoBackLink

nmap <leader>f :GitGutterToggle<CR>
nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>z :set invlist<CR>

nmap <S-Enter> O<ESC>
nmap <CR> o<ESC>

call pathogen#infect()
call pathogen#helptags()

let g:gruvbox_italic=0

colorscheme gruvbox
set background=dark    " Setting dark mode
syntax on

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

let g:ctrlp_working_path_mode = 'r'

nmap <leader>p :CtrlP<CR>
nmap <leader>bb :CtrlPBuffer<CR>
nmap <leader>bm :CtrlPMixed<CR>
nmap <leader>bs :CtrlPMRU<CR>

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1
