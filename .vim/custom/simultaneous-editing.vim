""""""""""""""""""""""""""""""""""""""""""""
"***        Simultaneous Editing        ***"
""""""""""""""""""""""""""""""""""""""""""""

" Window Splitting
set splitbelow
set splitright
" Key bindings (Vim consistent)
"   Ctrl-j move to the split below
"   Ctrl-k move to the split above
"   Ctrl-l move to the split to the right
"   Ctrl-h move to the split to the left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Tab navigation
" Key bindings
"   Ctrl-t to insert a new tab
"   Ctrl-<left> to navigate left a tab
"   Ctrl-<right> to navigate right a tab
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t><Esc> tabnew<CR>
map <C-Left>       :tabprev<CR>
map <C-Right>      gt<CR>

" Only show line numbers in current window.
":au WinEnter * :setlocal number
":au WinLeave * :setlocal nonumber
