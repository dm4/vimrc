set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "dm4"

hi Normal         gui=NONE   guifg=#bbbbbb ctermfg=250   guibg=#000000 ctermbg=0

hi IncSearch      gui=BOLD   guifg=#303030 ctermfg=236   guibg=#cd9999 ctermbg=174
hi Search         gui=NONE   guifg=#303030 ctermfg=236   guibg=#cd8b60 ctermbg=173
hi ErrorMsg       gui=BOLD   guifg=#ffffff ctermfg=15    guibg=#ce4e4e ctermbg=167
hi WarningMsg     gui=BOLD   guifg=#ffffff ctermfg=15    guibg=#ce8e4e ctermbg=173
hi ModeMsg        gui=BOLD   guifg=#7e7eae ctermfg=103   guibg=NONE
hi MoreMsg        gui=BOLD   guifg=#7e7eae ctermfg=103   guibg=NONE
hi Question       gui=BOLD   guifg=#ffcd00 ctermfg=220   guibg=NONE

hi StatusLine     gui=BOLD   guifg=#aaaaaa ctermfg=234   guibg=#222222 ctermbg=248
hi User1          gui=BOLD   guifg=#00ff8b ctermfg=48    guibg=#3e3e5e ctermbg=238
hi User2          gui=BOLD   guifg=#7070a0 ctermfg=61    guibg=#3e3e5e ctermbg=238
hi StatusLineNC   gui=NONE   guifg=#b9b9b9 ctermfg=233   guibg=#121212 ctermbg=249
hi VertSplit      gui=NONE   guifg=#aaaaaa ctermfg=248   guibg=#242424 ctermbg=235

hi WildMenu       gui=BOLD   guifg=#eeeeee ctermfg=7     guibg=#6e6eaf ctermbg=61

hi MBENormal                 guifg=#cfbfad ctermfg=181   guibg=#2e2e3f ctermbg=236
hi MBEChanged                guifg=#eeeeee ctermfg=7     guibg=#2e2e3f ctermbg=236
hi MBEVisibleNormal          guifg=#cfcfcd ctermfg=252   guibg=#4e4e8f ctermbg=60
hi MBEVisibleChanged         guifg=#eeeeee ctermfg=7     guibg=#4e4e8f ctermbg=60

hi DiffText       gui=NONE   guifg=#ffffcd ctermfg=230   guibg=#4a2a4a ctermbg=238
hi DiffChange     gui=NONE   guifg=#ffffcd ctermfg=230   guibg=#306b8f ctermbg=60
hi DiffDelete     gui=NONE   guifg=#ffffcd ctermfg=230   guibg=#6d3030 ctermbg=238
hi DiffAdd        gui=NONE   guifg=#ffffcd ctermfg=230   guibg=#306d30 ctermbg=238

hi Cursor         gui=NONE   guifg=#404040 ctermfg=238   guibg=#cccccc ctermbg=252
hi lCursor        gui=NONE   guifg=#404040 ctermfg=238   guibg=#8fff8b ctermbg=120
hi CursorIM       gui=NONE   guifg=#404040 ctermfg=238   guibg=#8b8bff ctermbg=105
hi CursorLine     gui=NONE                               guibg=#151515 ctermbg=234 cterm=NONE

hi Folded         gui=NONE   guifg=#cfcfcd ctermfg=252   guibg=#8888dd ctermbg=104
hi FoldColumn     gui=NONE   guifg=#8b8bcd ctermfg=104   guibg=#2e2e2e ctermbg=236

hi Directory      gui=NONE   guifg=#0099ff ctermfg=33    guibg=NONE
hi LineNr         gui=NONE   guifg=#666666 ctermfg=241   guibg=#141414 ctermbg=233
hi NonText        gui=BOLD   guifg=#8b8bcd ctermfg=104   guibg=NONE
hi SpecialKey     gui=BOLD   guifg=#ab60ed ctermfg=135   guibg=NONE
hi Title          gui=BOLD   guifg=#bf4f4b ctermfg=131   guibg=NONE
hi Visual         gui=NONE   guifg=#eeeeee ctermfg=7     guibg=#5555dd ctermbg=62

hi Comment        gui=NONE   guifg=#666666 ctermfg=241   guibg=NONE
hi Constant       gui=NONE   guifg=#ffcd8b ctermfg=222   guibg=NONE
hi String         gui=NONE   guifg=#ffcd8b ctermfg=222   guibg=#404040 ctermbg=236
hi Error          gui=NONE   guifg=#ffffff ctermfg=15    guibg=#6e2e2e ctermbg=238
hi Identifier     gui=NONE   guifg=#ff8bff ctermfg=213   guibg=NONE
hi Ignore         gui=NONE
hi Number         gui=NONE   guifg=#f0ad6d ctermfg=215   guibg=NONE
hi PreProc        gui=NONE   guifg=#409090 ctermfg=66    guibg=NONE
hi Special        gui=NONE   guifg=#c080d0 ctermfg=140   guibg=NONE
hi SpecialChar    gui=NONE   guifg=#c080d0 ctermfg=140   guibg=#404040 ctermbg=238
hi Statement      gui=NONE   guifg=#808bed ctermfg=105   guibg=NONE
hi Todo           gui=BOLD   guifg=#303030 ctermfg=236   guibg=#d0a060 ctermbg=179
hi Type           gui=NONE   guifg=#ff8bff ctermfg=213   guibg=NONE
hi Underlined     gui=BOLD   guifg=#df9f2d ctermfg=178   guibg=NONE
hi TaglistTagName gui=BOLD   guifg=#808bed ctermfg=105   guibg=NONE

hi perlSpecialMatch   gui=NONE guifg=#c080d0 ctermfg=140   guibg=#404040 ctermbg=238
hi perlSpecialString  gui=NONE guifg=#c080d0 ctermfg=140   guibg=#404040 ctermbg=238

hi cSpecialCharacter  gui=NONE guifg=#c080d0 ctermfg=140   guibg=#404040 ctermbg=238
hi cFormat            gui=NONE guifg=#c080d0 ctermfg=140   guibg=#404040 ctermbg=238

hi Pmenu          gui=NONE   guifg=#eeeeee ctermfg=7   guibg=#2e2e3f ctermbg=236
hi PmenuSel       gui=BOLD   guifg=#eeeeee ctermfg=7   guibg=#4e4e8f ctermbg=60
hi PmenuSbar      gui=BOLD   guifg=#eeeeee ctermfg=7   guibg=#6e6eaf ctermbg=61
hi PmenuThumb     gui=BOLD   guifg=#eeeeee ctermfg=7   guibg=#6e6eaf ctermbg=61

hi TabLine        gui=NONE   guifg=#cccccc guibg=#555555
hi TabLineFill    gui=NONE   guifg=#000000 guifg=#000000
hi link TabLineSel Normal

hi SpellBad     gui=undercurl guisp=#cc6666
hi SpellRare    gui=undercurl guisp=#cc66cc
hi SpellLocal   gui=undercurl guisp=#cccc66
hi SpellCap     gui=undercurl guisp=#66cccc

hi MatchParen   gui=NONE      guifg=#404040 ctermfg=238 guibg=#8fff8b ctermbg=120
