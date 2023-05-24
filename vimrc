" No vi compatibility
set nocompatible

" Enables hidden buffers
set hidden

" No syntax highlighting
syntax off

" No filetype detection
filetype off

" Copy indent from the previous line
set autoindent

" Use spaces instead of tabs.
set expandtab

" 4 spaces per tab
set tabstop=4
set shiftwidth=4

" No highlighting when searching
set nohlsearch

" 80 characters per line (also controls wrapping by 'gq').
set textwidth=80
" But don't auto-wrap text, only comments and 'gq'.
set formatoptions=cq

" Plugins are installed through pathogen
execute pathogen#infect()

" Fzf
set rtp+=~/.fzf
nmap <leader>fg :GitFiles<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>rg :Rg<CR>

" Use the solarized colorscheme.
set background=light
colorscheme solarized

" If ripgrep is available, use it as our default grep program.
if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif

" Set netrw sorting order to strictly lexicographic. Do this after loading
" vim-vinegar, which has its own setting.
:au VimEnter * if exists('g:loaded_vinegar') | let g:netrw_sort_sequence="*" | endif
