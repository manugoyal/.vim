" No vi compatibility
set nocompatible

" Enables hidden buffers
set hidden

" No syntax highlighting
syntax off

" Copy indent from the previous line
set autoindent

" Use spaces instead of tabs
set expandtab

" Plugins are installed through pathogen
execute pathogen#infect()

" Set some specific paths for CtrlP to ignore.
let g:ctrlp_custom_ignore = {
  \ 'dir': '\vbiz\/business_dashboard\/static\/data',
  \ }

" No limit on number of files cached by CtrlP.
let g:ctrlp_max_files=0

" We're on a dark background, so use an appropriate color scheme.
colorscheme desert
