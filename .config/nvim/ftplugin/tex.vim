" Comments using C-/ or C-\
xnoremap <buffer> <C-\>c ^o^I% <ESC><ESC>
xnoremap <buffer> <C-\>u ^o^ld<ESC>
nnoremap <buffer> <C-\>c ^I% <ESC><ESC>
nnoremap <buffer> <C-\>u ^I<DEL><DEL><ESC>

" Bold using C-B
inoremap <buffer> <C-B> \textbf{
vnoremap <buffer> <C-B> c\textbf{<ESC>pa}<ESC>
setlocal colorcolumn=81
