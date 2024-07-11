set number
set guioptions-=T
set nobackup
set cursorline
set clipboard&
set clipboard^=unnamedplus
set smartindent
set encoding=utf-8

set fileencodings=utf-8
set fileformats=unix,dos,mac
noremap! <C-?> <C-h>

autocmd filetype cpp nnoremap <F8> :w <bar> !cd && java Main %:p:h/%:t && cd -<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ % && ./a.out<CR>
autocmd filetype c nnoremap <F9> :w <bar> !gcc % && ./a.out<CR>

augroup templateGroup
autocmd!
autocmd BufNewFile *.cpp :0r ~/template/t.cpp
autocmd BufNewFile *.c :0r ~/template/t.c
augroup END
