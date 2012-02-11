" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent identation for c
set smartindent

" set tabwidth and use spaces
set tabstop=3
set shiftwidth=3
set expandtab

" wrap long lines at 120 chars
set textwidth=120

" turn syntax highlighting on
set t_Co=256
set syntax=on
colorscheme wombat256

" turn on line numbers
set number

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Install OmniCppComplete like described on http://vim.wikia.com
" This offers C++ code completion while typing '.' '->' or <C-o>
" Load standard tag files
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl

" autoclosing brackets
"iab { {<CR>}<UP>
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}      {}

" autoclosing braces
inoremap (      ()<Left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
