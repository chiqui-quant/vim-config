" Custom Vim configuration

call plug#begin('~/.vim/autoload')
    Plug 'scrooloose/nerdtree'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'junegunn/goyo.vim'
call plug#end()

syntax on
set number
set wildmenu
set t_vb=
set autoindent
set smartindent
set expandtab
set tabstop=4 softtabstop=4
set shiftwidth=4
set nohlsearch
set noerrorbells
set scrolloff=8
set title
set completeopt=menuone
set clipboard+=unnamedplus
set mouse=a
set background=dark
colorscheme palenight
" Use a line cursor within insert mode and a block cursor everywhere else.
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[1 q"
