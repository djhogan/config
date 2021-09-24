set nocompatible

if !filereadable(expand('~/plug.vim'))
  silent !curl -fLo ~/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

source ~/plug.vim

call plug#begin()

call plug#end()
