" Utility functions for searching rtags

function! RCFind(...)
  if a:0 == 0
    let searchToken = expand("<cword>")
  elseif a:0 == 1
    let searchToken = a:1
  else
    throw "Function accepts either 0 or 1 arguments"
  endif
  cexpr system('rc -F ' . l:searchToken)
endfunction

function! RCRef(...)
  if a:0 == 0
    let searchToken = expand("<cword>")
  elseif a:0 == 1
    let searchToken = a:1
  else
    throw "Function accepts either 0 or 1 arguments"
  endif
  cexpr system('rc -R ' . l:searchToken)
endfunction

nnoremap <leader>rf :call RCFind()<CR>
nnoremap <leader>rr :call RCRef()<CR>
