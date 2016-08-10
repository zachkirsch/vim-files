" Plugin Disabling
" Uncomment a line to disable that plugin

"let g:loaded_sneak_plugin        = 1
"let g:loaded_fugitive            = 1
"let g:loaded_airline             = 1
"let g:loaded_airline_themes      = 1
"let g:loaded_youcompleteme       = 1 " makes vim too slow
"let g:loaded_syntastic_plugin    = 1
"let g:loaded_commentary          = 1
"let g:loaded_table_mode          = 1
"let g:tabular_loaded             = 1
"let g:loaded_unimpaired          = 1
"let g:loaded_surround            = 1
"let g:loaded_repeat              = 1
 let   loaded_nerd_tree           = 1
 let g:loaded_nerdtree_git_status = 1
"let g:loaded_dispatch            = 1
"let g:AutoPairsLoaded            = 1
" can't find disable-line for vim-markdown
" can't find disable-line for vimtex

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VUNDLE STUFF
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/Valloric/YouCompleteMe'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0

Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ



""""""""""""""""""""""""""""""""""""""""""""
"***              pathogen              ***"
"            STARTUP SEQUENCE              "
""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
call pathogen#helptags()
"
" VIM SNEAK OPTIONS "
hi link SneakPluginTarget ErrorMsg
hi link SneakPluginScope  Comment
let g:sneak#use_ic_scs = 1
"let g:sneak#streak = 1


" VIM AIRLINE OPTIONS "
set laststatus=2
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1
set ttimeoutlen=50
let g:airline#extensions#branch#enabled = 0 " integration w/ fugitive


" SYNTASTIC OPTIONS "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" so no overlap with ycm
"let g:syntastic_mode_map = { 'passive_filetypes': ['c', 'cpp'] }

" VIM-MARKDOWN OPTIONS "
let g:vim_markdown_folding_disabled = 1

" NERDTree Options

" close vim if nerdtree is the only thing open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" launch with ctrl-N
map <C-n> :NERDTreeToggle<CR>

" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" quit nerdtree after opening a file
let NERDTreeQuitOnOpen=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
