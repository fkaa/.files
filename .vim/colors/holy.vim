" =============================================================================
" File:        holy.vim
" Description: Holy vim color scheme
" =============================================================================

set background=light
highlight clear
let colors_name = "holy"

" blue:     #0000aa
" green:    #00aa00
" cyan:     #00aaaa
" red:      #aa0000
" purple:   #aa00aa
" brown:    #aa5500
" ltgray:   #aaaaaa
" dkgray:   #555555
" ltblue:   #5555ff
" ltgreen:  #55ff55
" ltred:    #ff5555
" ltpurple: #ff55ff
" yellow:   #ffff55

hi Normal       guifg=#000000          guibg=#ffffff   gui=NONE
hi CursorLine   guifg=#ffffff             guibg=#0000aa   gui=NONE
hi CursorColumn guifg=#ffffff             guibg=#0000aa   gui=NONE
hi LineNr       guifg=#555555          guibg=NONE      gui=NONE
hi Statement    guifg=#0000a8          guibg=NONE      gui=bold
hi Function     guifg=#aa00a8          guibg=NONE      gui=bold
hi String       guifg=#aa5500          guibg=NONE      gui=NONE
hi Type         guifg=#000000          guibg=NONE      gui=bold
hi Conditional  guifg=#0000a8          guibg=NONE      gui=bold
hi Todo         guifg=#aa5500          guibg=NONE      gui=bold,underline
hi Comment      guifg=#aa5500          guibg=NONE      gui=NONE
hi SpecialComment      guifg=#aa5500          guibg=NONE      gui=NONE
hi Special      guifg=#868585          guibg=NONE      gui=NONE
hi Identifier   guifg=#000000          guibg=NONE      gui=bold
hi Keyword      guifg=#0000a8          guibg=NONE      gui=bold
hi PreProc      guifg=#5555ff          guibg=NONE      gui=bold
hi Include      guifg=#000000          guibg=NONE      gui=NONE
hi Constant     guifg=#00aaaa          guibg=NONE      gui=NONE
hi Number       guifg=#00aaaa          guibg=NONE      gui=NONE
hi Delimiter    guifg=#555555          guibg=NONE      gui=NONE

hi Visual       guifg=#555555          guibg=#aaaaaa   gui=NONE
hi ColorColumn  guifg=NONE             guibg=#222222
hi Cursor       guifg=bg               guibg=fg        gui=NONE
hi CursorIM     guifg=bg               guibg=fg        gui=NONE
hi lCursor      guifg=bg               guibg=fg        gui=NONE

hi DiffAdd      guifg=#00cc00          guibg=#002200   gui=NONE
hi DiffChange   guifg=#ff9955          guibg=#220000   gui=NONE
hi DiffDelete   guifg=#ff0000          guibg=#220000   gui=NONE
hi DiffText     guifg=#ff0000          guibg=#220000   gui=NONE

hi Directory    guifg=#555555          guibg=bg        gui=NONE
hi ErrorMsg     guifg=#6f6f6f          guibg=NONE      gui=NONE
hi FoldColumn   guifg=#aaaaaa          guibg=#0000aa   gui=bold
hi Folded       guifg=#aaaaaa          guibg=#0000aa   gui=bold

hi IncSearch    guifg=#000000          guibg=#ffff55   gui=NONE
hi Search       guifg=#aaaaaa          guibg=#ffff55   gui=NONE
hi MatchParen   guifg=#000000          guibg=#ffff55   gui=bold
hi ModeMsg      guifg=#ffffff          guibg=#767676   gui=bold
hi MoreMsg      guifg=#7c7c7c          guibg=bg        gui=bold
hi NonText      guifg=#7e7e7e          guibg=bg        gui=bold

hi Pmenu        guifg=#aaaaaa          guibg=#0000a8   gui=NONE
hi PmenuSel     guifg=#ffffff          guibg=#0000a8   gui=bold
hi PmenuSbar    guifg=fg               guibg=#0000a8   gui=NONE
hi PmenuThumb   guifg=fg               guibg=#777777   gui=NONE

hi Question     guifg=#454545          guibg=bg        gui=bold
hi SignColumn   guifg=#ffffff          guibg=#181818   gui=NONE

hi SpecialKey   guifg=#454545          guibg=#000000   gui=NONE

hi SpellBad     guisp=#ffffff          guibg=#000000   gui=undercurl    guisp=#ffc0c0
hi SpellCap     guisp=#5d5d5d                          gui=undercurl
hi SpellLocal   guisp=#434343                          gui=undercurl 
hi SpellRare    guisp=#7d7d7d                          gui=undercurl
hi StatusLine   guifg=#ffffff          guibg=#0000aa   gui=bold
hi StatusLineNC guifg=#ffffff          guibg=#0000aa   gui=NONE
hi TabLine      guifg=fg               guibg=#757575   gui=underline
hi TabLineFill  guifg=fg               guibg=bg        gui=reverse
hi TabLineSel   guifg=fg               guibg=bg        gui=bold
hi Title        guifg=#aa5500          guibg=bg        gui=bold
hi VertSplit    guifg=#0000aa          guibg=#ffffff
hi WarningMsg   guifg=#cfcfcf          guibg=#5b5b5b   gui=NONE
hi WildMenu     guifg=#ffffff          guibg=#0000a8   gui=NONE
"hi Boolean      guifg=#616060          guibg=NONE      gui=bold
hi Ignore       guifg=bg               guibg=NONE      gui=NONE
hi Error        guifg=#ff5555          guibg=NONE      gui=undercurl guisp=#ff0000

" -----------------------------------------------------------------------------
" Taglist
hi MyTagListFileName guifg=#ffffff      guibg=#444444
hi MyTagListTitle    guifg=#666666      guibg=bg        gui=bold

hi VimError         guifg=#b6b6b6      guibg=#313131   gui=bold
hi VimCommentTitle  guifg=#5c5c5c      guibg=bg        gui=bold
hi qfFileName       guifg=#6a6a6a      guibg=NONE      gui=NONE
hi qfLineNr         guifg=fg           guibg=NONE      gui=NONE
hi qfError          guifg=#FF4040      guibg=#220000   gui=undercurl guisp=#ff0000

hi SpellLocal       guifg=#ff9955      guibg=NONE   gui=undercurl
