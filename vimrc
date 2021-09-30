set nocompatible
set foldmethod=indent

""" backspace, tabs, and indentation
set backspace=indent,eol,start
set ai et sw=4 ts=4
set softtabstop=4
"""

""" QoL
inoremap jk <Esc>
nnoremap <Tab> za
"""

if !filereadable(expand('~/plug.vim'))
  silent !curl -fLo ~/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()

set bg=dark
colorscheme gruvbox
set cursorline
        
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif
