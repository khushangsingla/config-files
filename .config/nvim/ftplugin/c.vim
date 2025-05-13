" Comments using C-/ or C-\
xnoremap <buffer> <C-\>c ^o^I// <ESC><ESC>
xnoremap <buffer> <C-\>u ^o^2ld<ESC><ESC>
nnoremap <buffer> <C-\>c ^I// <ESC>
nnoremap <buffer> <C-\>u ^I<DEL><DEL><DEL><ESC><ESC>

call plug#begin()
Plug 'https://github.com/ludovicchabant/vim-gutentags'
Plug 'https://github.com/dhananjaylatkar/cscope_maps.nvim'
call plug#end()
lua require("cscope_maps").setup()

" For ctags
" use ctrl+p for preview mode
nnoremap <C-\>p :ptag <C-r><C-w><CR>
inoremap <C-p> <C-o>:ptag <C-r><C-w><CR>
nnoremap <C-q> :pclose<CR>
" function! GetPreviewHeight()
" 	let prev_ht_val = vim.cmd(set lines?) * 0.2
" 	return prev_ht_val
" endfunction
set previewheight=10
nnoremap <C-\>t :execute 'tab tag '.expand('<cword>')<CR>
nnoremap <C-\>o :execute 'tag '.expand('<cword>')<CR>


" For using cscope
" if has("cscope")
"         " Look for a 'cscope.out' file starting from the current directory,
"         " going up to the root directory.
"         let s:dirs = split(getcwd(), "/")
"         while s:dirs != []
"                 let s:path = "/" . join(s:dirs, "/")
"                 if (filereadable(s:path . "/cscope.out"))
"                         execute "cs add " . s:path . "/cscope.out " . s:path . " -v"
"                         break
"                 endif
"                 let s:dirs = s:dirs[:-2]
"         endwhile
" 
"         set csto=0  " Use cscope first, then ctags
"         set cst     " Only search cscope
"         set csverb  " Make cs verbose
" 
"         nmap `<C-\>`s :cs find s `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
"         nmap `<C-\>`g :cs find g `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
"         nmap `<C-\>`c :cs find c `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
"         nmap `<C-\>`t :cs find t `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
"         nmap `<C-\>`e :cs find e `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
"         nmap `<C-\>`f :cs find f `<C-R>`=expand("`<cfile>`")`<CR>``<CR>`
"         nmap `<C-\>`i :cs find i ^`<C-R>`=expand("`<cfile>`")`<CR>`$`<CR>`
"         nmap `<C-\>`d :cs find d `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
"         nmap <F6> :cnext <CR>
"         nmap <F5> :cprev <CR>
" 
"         " Open a quickfix window for the following queries.
"         set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
" endif
