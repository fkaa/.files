set nocompatible

filetype off

execute pathogen#infect()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/target

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$|target|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

"setup paths for temporary files (backup/swap/undo)
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/tmp/backup/
set backup

set directory=~/.vim/tmp/swap/
set directory+=.

set undodir=~/.vim/tmp/undo/
set undofile

set guifont=Consolas\ 11

"leader key on spacebar
let mapleader = " "
let maplocalleader = " "

filetype plugin indent on

nmap <F8> :TagbarToggle<CR>

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

set mouse=a
set number

"color theme
set background=light
color rin 

set hidden

" Include text after begin and end markers
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

highlight ConflictMarkerBegin guibg=#00cc00 gui=bold
highlight ConflictMarkerOurs guibg=#00cc00
highlight ConflictMarkerTheirs guibg=#ff0000
highlight ConflictMarkerEnd guibg=#ff0000 gui=bold

