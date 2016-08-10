" Look for compile if there is a file called compile
if filereadable("compile")
        setlocal makeprg=sh\ compile
endif

" Map <Mk> and <mm> as macros for :make in normal mode
"command -nargs=* Mk :make -link "<args>"

" mm => make
autocmd FileType * nmap mm :!make <CR> <CR> :sh <CR>
