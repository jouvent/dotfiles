"Colors related :
"------------------------------------
syntax on
colorscheme ir_black

"Essentials
"------------------------------------
set nocompatible
set hidden

"gvim specific options :
"------------------------------------
if has("gui_running")
    set t_Co=256
    set mousemodel=popup
    set guioptions-=T " get rid of toolbar
    set guioptions-=m " get rid of menu
    set guioptions-=e " get rid of tabe display
    set lines=30 columns=100
endif

"File Type
"------------------------------------
filetype on
filetype plugin on
filetype indent on
 

"Dispplay
"------------------------------------
set visualbell
set laststatus=2
set ruler
"havig current line more visible
set cursorline
"minimal number of screen lines to keep above and below the cursor.
set scrolloff=4
"menu
set wildmenu
set showcmd
if has("statusline")
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif




"Dealing with buffers
"------------------------------------
" do not show tables
set showtabline=1


"Indentation :
"------------------------------------
set autoindent
set smarttab
set expandtab
set smartindent
set backspace  =indent,eol,start
set shiftwidth =4
set tabstop    =4
set softtabstop=4

"Move Backup Files to ~/.vim/sessions
"------------------------------------
set backupdir=~/.vim/sessions
set dir=~/.vim/sessions

"Keys Mapping
"------------------------------------
nnoremap ' `
nnoremap ` '
let mapleader = ","
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 
:noremap <F2> :set invhls<CR>
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>
"for phpfolding
map <F5> <ESC>:EnableFastPHPFolds<Cr>
map <F6> <ESC>:EnablePHPFolds<Cr>
map <F7> <ESC>:DisablePHPFolds<Cr>

"for NERDTree
map <F3> <ESC>:NERDTreeToggle<Cr>

"for navigate grep results
map <F1> <ESC>:cp<Cr>
map <F2> <ESC>:cn<Cr>

"Source plugins
"------------------------------------
runtime plugin/matchit.vim
runtime plugin/snippetsEmu.vim 
