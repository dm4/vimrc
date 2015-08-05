"""""""""""""""""
" .vimrc by dm4 "
"               "
"""""""""""""""""

" my listchars is utf-8
scriptencoding utf-8

" vundle settings
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" bundles
Plugin 'dm4/vim-boshiamy'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'sjl/gundo.vim'
Plugin 'simplecommenter'
Plugin 'AutoComplPop'
Plugin 'hexHighlight.vim'
Plugin 'dm4/vim-writer'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'

" vundle settings
filetype indent plugin on

" indent
set expandtab
set autoindent
set smartindent
set cindent
set ignorecase
set hls

" tab and space
set shiftwidth=4
set tabstop=4
set softtabstop=4

" backup info
set backup
set backupdir=$HOME/.vim/backup/
if exists("*mkdir") && !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup")
endif

" undo
set undofile
set undodir=$HOME/.vim/undo/
if exists("*mkdir") && !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo")
endif

" set line break
set nowrap
set linebreak
"set showbreak=>>\ 

" other settings
set nu
syntax on
set ruler
"set mouse=a
set bs=2
set nocompatible
set showcmd
set clipboard=unnamed
set foldmethod=marker

" invisible character
set nolist
set listchars=tab:▸\ ,trail:▝,eol:¬

" mininum split window size
set winminheight=0
set winminwidth=0

" auto reload vimrc
autocmd! BufWritePost *vimrc source %

" set filetype
autocmd BufReadPost,BufNewFile *.tt set filetype=html
autocmd BufReadPost,BufNewFile httpd*.conf set filetype=apache
autocmd BufReadPost,BufNewFile *.md set filetype=markdown

" set indent
autocmd BufReadPost,BufNewFile *.rb set sw=2 ts=2 softtabstop=2
autocmd BufReadPost,BufNewFile *.erb set sw=2 ts=2 softtabstop=2
"autocmd BufReadPost,BufNewFile *.html set sw=2 ts=2 softtabstop=2

" Show diff when git commit
autocmd FileType gitcommit DiffGitCached


" for taglist
"autocmd BufWritePost *.cpp silent exe "!exctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
"autocmd BufWritePost *.h silent exe "!exctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."

" for vim-go
autocmd FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
autocmd FileType go nmap <Leader>gdt <Plug>(go-doc-tab)
autocmd FileType go nmap <leader>gr <Plug>(go-run)
autocmd FileType go nmap <Leader>gi <Plug>(go-implements)

" Save last postion
if has("autocmd")
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif

" key mapping
let mapleader=","
nmap ; :
vmap ; :
nmap j gj
nmap k gk
vmap j gj
vmap k gk
imap <C-D>      <DEL>
nmap <F7>       :w<CR>:!perl %<CR>
nmap <C-L>      :set nu!<CR>
nmap <C-n>      gt
nmap <C-p>      gT
imap <C-a>      <HOME>
imap <C-e>      <END>
imap <C-f>      <RIGHT>
imap <C-b>      <LEFT>
nmap <C-J>      ddp==
nmap <C-K>      ddkP==
nmap <Leader>n  <plug>NERDTreeTabsToggle<CR>
nmap <Leader>gun :GundoToggle<CR>
nmap <Leader>b  :e ++enc=big5<CR>
nmap <Leader>u  :e ++enc=utf-8<CR>
nmap <Leader>p  :set paste!<CR>
nmap <Leader>r  :set wrap!<CR>
nmap <Leader>ev :tabnew $MYVIMRC<CR>
nmap <Leader>h  :set hls!<CR>
nmap <Leader>s  :w<CR>:source %<CR>
nmap <Leader>i  :set list!<CR>

" for fakeclip
vmap <Leader>v  "+y

" ctrl-tab only works on gui
nmap <C-Tab>    gt

" hexHighlight plugin
nmap <Leader>l :call HexHighlight()<CR>

" Show syntax highlighting groups for word under cursor
nmap <C-C> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Encoding
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1

" color setting
if $TERM == "xterm-256color" || $TERM == "screen-256color"
    " set 256 colors
    set t_Co=256
elseif $TERM == "xterm"
    set t_Co=16
endif

" theme setting
set cursorline
set background=dark
silent! colorscheme solarized

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" set status line
set laststatus=2
set statusline=%{(&paste)?'[p]':''}
set statusline+=%m%f
set statusline+=%=
set statusline+=(%{mode()})
set statusline+=\ \ 
set statusline+=[%{&fenc}]
set statusline+=\ \ 
set statusline+=[%{&ft!=''?&ft:'none'}]
set statusline+=\ \ 
set statusline+=Col\ %c,\ Line\ %l/%L
set statusline+=\ \ 
set statusline+=%p%%\ 

" remove preview window from omni complete
set completeopt-=preview

" NERDTree
let g:nerdtree_tabs_open_on_gui_startup = 0

" simplecommenter
let g:oneline_comment_padding = ''

" vimim
let g:vimim_cloud = -1
let g:vimim_custom_color = -1

" zencoding
let g:user_zen_settings = {
\  'indentation' : '    '
\}

" clang_complete
let g:clang_snippets = 1
let g:clang_complete_copen = 0
let g:clang_snippets_engine = 'snipmate'

" vjde for android
let g:vjde_lib_path = '/usr/local/Cellar/android-sdk/r18/platforms/android-15/android.jar'

if has("gui_running")
    " set colors
    set background=light
    silent! colorscheme solarized
"    set guifont=Monaco:h17
    set guifont=Source\ Code\ Pro:h18

    " window size
    set lines=100
    set columns=90

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
        " set CMD+ENTER fullscreen
        set fuopt=maxhorz,maxvert
"        set fullscreen
    endif
endif
