set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'racer-rust/vim-racer'

set hidden
let g:racer_cmd = "/Users/fkaa/.multirust/toolchains/stable/cargo/bin/racer"
let $RUST_SRC_PATH="/Users/fkaa/Development/rustc-1.6.0/src/"

set langmenu=en_US.UTF-8

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set laststatus=2
set norelativenumber
set showcmd
set number
set hidden
set timeoutlen=2500
set hlsearch
set backspace=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8

let g:gitgutter_map_keys = 0
let mapleader = " "

match Error /\%81v.\+/

nmap <leader>t :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>q :Bdelete<CR>
nmap <leader>Q :Bdelete!<CR>
nmap <leader>bl :ls<CR>

nmap <leader>g :GitGutterToggle<CR>
nmap <leader>z :set invlist<CR>

nmap <S-Enter> O<ESC>
nmap <CR> o<ESC>

call pathogen#infect()
call pathogen#helptags()

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

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1
