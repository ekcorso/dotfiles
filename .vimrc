" -------------------------
" Plugins
" -------------------------

" Much of my Vim setup relies on plugins, managed by vim-plug. Ensure vim-plug
" is installed on Vim startup.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" List plugins I use
call plug#begin()

Plug 'cocopon/iceberg.vim'
Plug 'tpope/vim-sensible'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Install missing plugins on Vim startup
autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" -------------------------
" Color
" -------------------------

set background=dark
colorscheme iceberg

" -------------------------
" Various Vim options
" -------------------------

set breakindent
set linebreak
set nocompatible
set number
set showtabline=2

" -------------------------
" Vim plugin options
" -------------------------
"
" ale
let g:ale_completion_enabled = 1
let g:ale_linters = {
\ "python": ["mypy", "pylsp", "pylint"],
\}

let g:ale_fixers = {
\   'python': ['black'],
\}


inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" -------------------------
" Spelling
" -------------------------

au FileType gitcommit,markdown setl spell
