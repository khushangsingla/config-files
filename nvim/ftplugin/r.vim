" NVim-R Setup
call plug#begin()
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'} 
call plug#end()

" call StartR("R")
nnoremap ZZ :w<CR> \| :qa<CR>
" normal <C-w>H
