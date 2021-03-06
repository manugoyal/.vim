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

" Use the solarized colorscheme.
set background=light
colorscheme solarized

" Fzf
set rtp+=~/.fzf
nmap <leader>fg :GitFiles<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>rg :Rg<CR>
