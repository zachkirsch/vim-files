""""""""""""""""""""""""""""""""""""""""""""
"***        tabs & line lengths         ***"
""""""""""""""""""""""""""""""""""""""""""""

" no tab limit
set tabpagemax=100

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent
set fileformat=unix

" remove trailing whitespace on open and save
autocmd VimEnter * :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

" retab on open and save (for legacy/others' files)
autocmd VimEnter    * :retab
autocmd BufWritePre * :retab
autocmd VimEnter    make :%retab!
autocmd BufWritePre make :%retab!

set textwidth=80

" format/colorcolumn on 80 columns regardless of filetype plugin (except html)
" autocommenting as well
"set formatoptions+=tcoqnl1j
set formatoptions+=tcoqnl
autocmd BufWinEnter,BufNewFile *      setlocal formatoptions+=tco
autocmd BufWinEnter,BufNewFile *.c    setlocal formatoptions+=r
autocmd BufWinEnter,BufNewFile *.cpp  setlocal formatoptions+=r
autocmd BufWinEnter,BufNewFile *.html setlocal formatoptions-=t
autocmd BufWinEnter,BufNewFile *      setlocal colorcolumn=+1
autocmd BufWinEnter,BufNewFile *.html setlocal colorcolumn=0

set linebreak
"set breakindent

let &showbreak = '└ '

" Better indention/ hierarchy
set formatlistpat=^\\s*                    " Optional leading whitespace
set formatlistpat+=[                       " Start class
set formatlistpat+=\\[({]\\?               " |  Optionally match opening punctuation
set formatlistpat+=\\(                     " |  Start group
set formatlistpat+=[0-9]\\+                " |  |  A number
set formatlistpat+=\\\|[iIvVxXlLcCdDmM]\\+ " |  |  Roman numerals
set formatlistpat+=\\\|[a-zA-Z]            " |  |  A single letter
set formatlistpat+=\\)                     " |  End group
set formatlistpat+=[\\]:.)}                " |  Closing punctuation
set formatlistpat+=]                       " End class
set formatlistpat+=\\s\\+                  " One or more spaces
set formatlistpat+=\\\|^\\s*[-–+o*]\\s\\+  " Or ASCII style bullet points

" highlight in red when over 80 cols
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/


" Markdown & Latex
au BufNewFile,BufRead *.md,*.tex setlocal spell

" Web (js, html, css)
au BufNewFile,BufRead *.js,*.html,*.css,*.erb
    \ setlocal tabstop=2
    \          softtabstop=2
    \          shiftwidth=2

" C C++
au BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp
    \ setlocal tabstop=8
    \          softtabstop=8
    \          shiftwidth=8

" no expandtabs in makefile
autocmd FileType make setlocal noexpandtab

" Trimming whitespace
fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun
command! TrimW call TrimWhitespace()
