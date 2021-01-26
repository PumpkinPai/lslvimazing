" indent/lsl.vim

setlocal indentexpr=LSLIndent()

function! LSLIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ "{" && previous !~ "}" && line !~ "}" && line !~ ":$"
    return indent(previousNum) + &tabstop
  endif

  return indent(previousNum)
endfunction
