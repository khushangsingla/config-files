call plug#begin()

Plug 'Lokaltog/vim-distinguished'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

" (Optional) Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'

Plug 'neomake/neomake'

call plug#end()

" Begin LSP configuration


let g:LanguageClient_serverCommands = {
	\ 'vhdl': ['vhdl-tool', 'lsp']
    \ }

let g:LanguageClient_autoStart = 1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>

au! CursorHold *.vhd  execute ":call LanguageClient_textDocument_hover()"
au! CursorHold *.vhdl execute ":call LanguageClient_textDocument_hover()"
" End LSP configuration


let g:neomake_open_list = 2
autocmd! BufWritePost,BufRead * Neomake
let g:neomake_vhdl_vhdltool_maker = {
	\ 'exe': 'vhdl-tool',
	\ 'args': ['client', 'lint', '--compact'],
	\ 'errorformat': '%f:%l:%c:%t:%m',
	\ }
let g:neomake_vhdl_enabled_makers = ['vhdltool']
