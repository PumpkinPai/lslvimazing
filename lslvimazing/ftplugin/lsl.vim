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
autocmd BufWrite *.lsl :write save.lsl

" Optional remaps
autocmd FileType lsl    nnoremap <buffer> <localleader>c I//<Esc>
autocmd FileType lsl    :iabbrev <buffer> iff if ()<Left>

" Long haul ahead... Vimscript, you beast.
