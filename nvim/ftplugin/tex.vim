" Comments using C-/ or C-\
xnoremap <C-_> ^o^I% <ESC><ESC>
xnoremap <C-\> ^o^ld<ESC>
nnoremap <C-_> ^I% <ESC><ESC>
nnoremap <C-\> ^I<DEL><DEL><ESC>

" Bold using C-B
inoremap <C-B> \textbf{
vnoremap <C-B> c\textbf{<ESC>pa}<ESC>
