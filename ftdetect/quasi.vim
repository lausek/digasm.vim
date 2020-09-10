autocmd BufRead,BufNewFile *.asm call s:set_digasm_filetype()

function! s:set_digasm_filetype() abort
    if &filetype !=# 'digasm'
        set filetype=digasm
    endif
endfunction
