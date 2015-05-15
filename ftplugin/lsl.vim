" ftplugin/lsl.vim

setlocal completefunc=syntaxcomplete#Complete
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal shiftround
setlocal expandtab
setlocal autoindent

setlocal foldenable
setlocal foldmethod=syntax

" Sync any saved lsl file to the directory specified in vimrc if 
" one was specified.  Ignore if none
echom strpart(getline(2),2)
if strpart(getline(2),2) == "backup"
    let b:backupname = strpart(getline(1), 2)
    echom "Will be backed up as: " . b:backupname
    autocmd BufWrite *.lsl :write! b:backupname
endif

" Optional remaps
autocmd FileType lsl    nnoremap <buffer> <localleader>c I//<Esc>
autocmd FileType lsl    :iabbrev <buffer> iff if ()<Left>

" Long haul ahead... Vimscript, you beast.
