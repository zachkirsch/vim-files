" .vimrc
" Zach Kirsch
" Setup for Vim configuration
"
" TODO: smart wrapping of strings on newline
" format so that when return is pressed when inside a string, the string
" is concatenated (C-style) or a multiline string format (Python) is used

" TODO: vim-tex stuff:
"       [optional] write automatically every few seconds (or when cursorhold)
"       - when written, recompile (preferably in background). should probably
"         use a vim plugin so that all the necessary files are included in the
"         compilation.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" PROFILING

" exec 'profile start /tmp/vim.'.getpid().'.profile.txt'
" profile! file **
" profile  func *

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set leader
let mapleader = ","

" plugins
source $HOME/.vim/custom/plugins.vim

" custom statusline - disabled b/c using airline
"source $HOME/.vim/custom/statusline.vim

" so ; always finds the match to the right
"    , always finds the match to the left
" disabled because it sucks
"source $HOME/.vim/custom/consistent_repeat.vim

" hard mode
source $HOME/.vim/custom/hard-mode.vim

" general prefs
source $HOME/.vim/custom/general.vim

" searching prefs
source $HOME/.vim/custom/searching.vim

" tabs & line lengths
source $HOME/.vim/custom/tabs-lines.vim

" simultaneous editing (tabs, splits)
source $HOME/.vim/custom/simultaneous-editing.vim

" compiling & make files
source $HOME/.vim/custom/compiling.vim

