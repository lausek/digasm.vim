" Only load this indent file when no other was loaded.
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal nolisp
setlocal autoindent
setlocal indentexpr=GetAsmIndent(v:lnum)

if exists("*GetQuasiIndent")
    finish
endif

function! s:get_line_trimmed(lnum)
    let line = getline(a:lnum)
    return substitute(line, "^\s*", "", "")
endfunction

function! s:is_block_statement(lnum)
    let prevline = s:get_line_trimmed(a:lnum)
    if 0
    "if prevline =~? 'und zwar.*'
        return 1
    else
        return 0
    endif
endfunction

function GetAsmIndent(lnum)
    let prevlinenum = prevnonblank(a:lnum - 1)

    if s:is_block_statement(prevlinenum)
        return indent(prevlinenum) + 4
    else
        return indent(prevlinenum)
    endif
endfunction
