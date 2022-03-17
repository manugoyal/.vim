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
