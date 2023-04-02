set expandtab
set foldmethod=indent

" Comments using C-/ or C-\
xnoremap <C-_> ^o^I# <ESC><ESC>
xnoremap <C-\> ^o^ld<ESC>
nnoremap <C-_> ^I# <ESC><ESC>
nnoremap <C-\> ^I<DEL><DEL><ESC>
" xnoremap  ^o^2lI<BS><BS><ESC><ESC>

" Python Setup
let g:python_host_prog='/home/khushangsingla/.neovim/bin/python'
let g:python3_host_prog='/home/khushangsingla/.neovim/bin/python3'
" End python Setup

" Recommendation by checkhealth
let g:loaded_perl_provider=0

" Magma setup
call plug#begin()
Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
" key mappings for magma plug start
nnoremap <silent><expr> <LocalLeader>r  :MagmaEvaluateOperator<CR>
nnoremap <silent>       <LocalLeader>rr :MagmaEvaluateLine<CR>
xnoremap <silent>       <LocalLeader>r  :<C-u>MagmaEvaluateVisual<CR>
nnoremap <silent>       <LocalLeader>rc :MagmaReevaluateCell<CR>
nnoremap <silent>       <LocalLeader>rd :MagmaDelete<CR>
nnoremap <silent>       <LocalLeader>ro :MagmaShowOutput<CR>
" key mappings end

let g:magma_automatically_open_output = v:false
let g:magma_image_provider = "ueberzug"
" Magma setup end

