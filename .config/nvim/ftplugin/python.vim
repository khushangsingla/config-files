setlocal expandtab
setlocal foldmethod=indent

" Comments using C-/ or C-\
xnoremap <buffer> <C-\>c ^o^I# <ESC><ESC>
xnoremap <buffer> <C-\>u ^o^ld<ESC>
nnoremap <buffer> <C-\>c ^I# <ESC><ESC>
nnoremap <buffer> <C-\>u ^I<DEL><DEL><ESC>
" xnoremap  ^o^2lI<BS><BS><ESC><ESC>

