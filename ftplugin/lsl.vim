" ftplugin/lsl.vim

setlocal completefunc=syntaxcomplete#Complete

setlocal foldenable
setlocal foldmethod=syntax

setlocal commentstring=//\ %s

" Sync any saved lsl file to the directory specified in vimrc if 
" one was specified.  Ignore if none
" echom strpart(getline(2),2)
if strpart(getline(2),2) == "backup"
    let b:backupname = strpart(getline(1), 2)
    echom "Will be backed up as: " . b:backupname
    autocmd BufWrite *.lsl :write! b:backupname
endif

" Long haul ahead... Vimscript, you beast.
