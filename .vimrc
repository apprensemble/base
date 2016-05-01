execute pathogen#infect()
set nocompatible
syntax on
set autoindent
set shiftwidth=2
filetype plugin indent on
colorscheme industry
let g:tmuxcomplete#trigger = 'completefunc'
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:EclimCompletionMethod = 'omnifunc'
nmap <F4> <Plug>(JavaComplete-Imports-Add)
imap <F4> <Plug>(JavaComplete-Imports-Add)
