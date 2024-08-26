" NVim-R Setup
call plug#begin()
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'} 
call plug#end()

" call StartR("R")
nnoremap <buffer> ZZ :w<CR> \| :qa<CR>
" normal <buffer> <C-w>H
