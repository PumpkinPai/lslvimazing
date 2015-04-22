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
" Long haul ahead... Vimscript, you beast.
