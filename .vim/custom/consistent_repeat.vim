" so ; always finds the match to the right
"    , always finds the match to the left
function! s:InitConsistentRepeat(command)
    if a:command =~# '[FT]'
        noremap ; ,
        noremap , ;
    else
        silent! unmap ;
        silent! unmap ,
    endif
    return a:command
endfunction

noremap <expr> f <SID>InitConsistentRepeat('f')
noremap <expr> t <SID>InitConsistentRepeat('t')
noremap <expr> F <SID>InitConsistentRepeat('F')
noremap <expr> T <SID>InitConsistentRepeat('T')
