" Searching
set incsearch           " search as characters are entered

" ignore case if no uppercase letters
"set ignorecase
"set smartcase

"" no highlight for searching after cursor timeout, unless search keystrokes
"" are used
set hlsearch
autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * :set hlsearch<cr>*
noremap # :set hlsearch<cr>#


"" n and N center when going to next page
function! s:nice_next(cmd)
  let view = winsaveview()
  execute "normal! " . a:cmd
  if view.topline != winsaveview().topline
    normal! zz
  endif
endfunction

nnoremap <silent> n :call <SID>nice_next('n')<cr>
nnoremap <silent> N :call <SID>nice_next('N')<cr>
