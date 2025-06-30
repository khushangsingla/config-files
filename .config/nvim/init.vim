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
" set termguicolors

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
inoremap ll <C-x><C-o>

" ESC using jk or kj
inoremap jk <ESC>
inoremap kj <ESC>

" Normal Functioning of Y
nnoremap Y Vy

" Use H and L to go to start/end of line
nnoremap H ^
nnoremap L $

nnoremap <ESC><ESC> :nohl<cr>

" Python Setup
let g:python_host_prog='/home/khushangsingla/.neovim_pyvenv/bin/python'
let g:python3_host_prog='/home/khushangsingla/.neovim_pyvenv/bin/python3'
" End python Setup

" Rename tabs to show tab number.
" (Based on http://stackoverflow.com/questions/5927952/whats-implementation-of-vims-default-tabline-function)
if exists("+showtabline")
    function! MyTabLine()
        let s = ''
        let wn = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let wn = tabpagewinnr(i,'$')

            let s .= '%#TabNum#'
            let s .= i
            " let s .= '%*'
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let bufnr = buflist[winnr - 1]
            let file = bufname(bufnr)
            let buftype = getbufvar(bufnr, 'buftype')
			let ismod = getbufvar(bufnr, '&mod')
			let mod = ismod ? '[+]' : ''
            if buftype == 'nofile'
                if file =~ '\/.'
                    let file = substitute(file, '.*\/\ze.', '', '')
                endif
            else
                let file = fnamemodify(file, ':p:t')
            endif
            if file == ''
                let file = '[No Name]'
            endif
            let s .= ' ' . file . mod . ' '
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
    set showtabline=1
    highlight link TabNum Special
endif

" Copilot
call plug#begin()
Plug 'github/copilot.vim', { 'do': ':UpdateRemotePlugins' } " copilot
Plug 'jbyuki/instant.nvim' " live editing
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf
call plug#end()

nnoremap <C-k> <C-y>
nnoremap <C-j> <C-e>
set mouse=

" " Use operator pending p to work in brackets
" :onoremap p i(

" Username for plugin 'instant'
let g:instant_username = "khushangsingla"

colorscheme vim

lua require('lsp/go')


" LSP Setup
nnoremap <C-p> <C-w>}
nnoremap <C-q> :pclose<CR>
" set previewheight=10

nnoremap <leader>q :cclose<CR>
" open tag under cursor in a new tab
nnoremap <leader>t <C-w><C-]><C-w>T
