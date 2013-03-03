
set nocompatible
set number
set autoindent
set smartindent
set showmatch
set ruler
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set nobackup


syntax on


autocmd BufNewFile *.py exec ":call SetTitle()" 
func SetTitle() 
    if &filetype == 'python' 
        call setline(1,"#!/usr/bin/env python") 
        call append(line("."), "#coding=utf-8")
        call append(line(".")+1, "#file Name: ".expand("%")) 
        call append(line(".")+2, "#author: mew7wo") 
        call append(line(".")+3, "#mail: mew7wo@gmail.com") 
        call append(line(".")+4, "#created Time: ".strftime("%c")) 
        call append(line(".")+5, "") 
    endif
    autocmd BufNewFile * normal G
endfunc 
