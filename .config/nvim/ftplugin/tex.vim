" Comments using C-/ or C-\
xnoremap <buffer> <C-_> ^o^I% <ESC><ESC>
xnoremap <buffer> <C-\> ^o^ld<ESC>
nnoremap <buffer> <C-_> ^I% <ESC><ESC>
nnoremap <buffer> <C-\> ^I<DEL><DEL><ESC>

" Bold using C-B
inoremap <buffer> <C-B> \textbf{
vnoremap <buffer> <C-B> c\textbf{<ESC>pa}<ESC>
