" Custom Vim configuration
let mapleader =","

call plug#begin('~/.vim/autoload')
    Plug 'scrooloose/nerdtree' "navigate files in vim
    Plug 'drewtempelmeyer/palenight.vim' "cool theme
    Plug 'junegunn/goyo.vim' "centers text for better writing experience
    Plug 'ervandew/supertab' "tab suggestions
call plug#end()

" To see what each of them does type :h+the name of the function
" For more functionalities type :options
syntax on
set encoding=utf-8
set number
set wildmenu
set t_vb=
set linebreak " break lines without breaking words
set autoindent
set smartindent
set expandtab
set tabstop=4 softtabstop=4
set shiftwidth=4
set noerrorbells
set noswapfile
set nobackup
set incsearch
set nohlsearch
set scrolloff=8 "starts scrolling when you are 8 lines away
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

" Key bindings 
map <silent> <C-n> :NERDTreeFocus<CR> " ctrl+n for opening nerdtree

" Autocomplete
inoremap ( ()<Left>
inoremap { {}<Left>
"inoremap {<CR> {<CR>}<Esc>0 " for coding in C or Java (CR = enter)
inoremap [ []<Left>
inoremap < <><Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" Open splits at the bottom right
set splitbelow splitright

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Navigating with guides
inoremap ;gui <++>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_cdl

" Latex shortcuts
autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i



" Markdown 
autocmd FileType markdown inoremap ,bf \textbf{}<++><Esc>T{i


" Latex setup for compiling and displaying pdf
" Note, you need to install okular
" Important, the file name should not have spaces in between
map <C-c> :!pdflatex %<CR><CR>
map <C-d> :! okular $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR> 
