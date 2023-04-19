set ignorecase
set smartcase
set mouse=a
" set listchars=tab:→\ ,trail:␣
" set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
let g:rustfmt_autosave = 1

set background=light
colorscheme quiet
" colorscheme macvim256

nm <silent> <F1> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
    \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
    \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
    \ . ">"<CR>

let mapleader = " "
nnoremap <leader>f :FZF<CR>
xnoremap <silent> <leader>y y:call system("wl-copy --trim-newline", @*)<cr>:call system("wl-copy -p --trim-newline", @*)<cr>

