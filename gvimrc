" set colors
if filereadable($HOME."/.vim/colors/yzlin256.vim")
    colors yzlin256
     hi StatusLine   guibg=gray20
     hi LineNr       guifg=gray40    guibg=gray10
     hi Folded       guibg=gray30
endif
set cursorline
hi CursorLine   guibg=gray15

" window size
set lines=30
set columns=80

" hide tool bar
set guioptions+=c
set guioptions-=e
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" disable input manager
set imdisable
set antialias

if has("gui_macvim")
    set guifont=Monaco:h15
    " set CMD+ENTER fullscreen
    set fuopt=maxhorz,maxvert
    " for eclim <cmd + shift + L>
    "map <D-L> :ProjectList<CR>
    "map <D-C> :ProjectCreate 
    "map <D-E> :ProjectTree<CR>
    "map <D-D> :ProjectDelete 
endif
