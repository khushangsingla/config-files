" Leader Key Setup
let mapleader = ","
let g:mapleader = ","

" Start editing vimrc using ,ev and source using ,sv
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Numbering on left
set number
set relativenumber
set numberwidth=4

" Colours of text
syntax on
set termguicolors

" Indentation and tabstops
set autoindent
set softtabstop=4
set shiftwidth=4
set tabstop=4

filetype plugin on

" Use C-u to convert current word to upper case
inoremap <C-u> <ESC>viwUviw<ESC>a
nnoremap <C-u> viwU

" navigate buffers without losing unsaved work
set hidden
" Fix cursor replacement after closing nvim
set guicursor=
" Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

" wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

" Code opens folded for making it easier to see
set foldmethod=syntax

" To be able to see around
set scrolloff=5

" Possible to undo even after closing
set undofile

" Tabs Setup
" Next tab using ,tn
map <leader>tn :tabn<cr>
" Previous tab using ,tp
map <leader>tp :tabp<cr>
" New tab
map <leader>te :tabe 
" Go to Tab
map <leader>gt :tabn 

" AutoCompletion using jj and kk
inoremap jj <C-n>
inoremap kk <C-p>

" Normal Functioning of Y
nnoremap Y Vy

" Use H and L to go to start/end of line
nnoremap H ^
nnoremap L $

nnoremap <ESC><ESC> :nohl<cr>
set cursorline
