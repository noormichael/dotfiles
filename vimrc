" Function to source only if file exists
function! SourceIfExists(file)
  if filereadable(expand(a:file))
      exe 'source' a:file
  endif
endfunction

call SourceIfExists("~/dotfiles/local/vimrc")

colorscheme elflord
syntax enable

set nu
set backspace=indent,eol,start
set mouse=a
set smartindent

set foldmethod=syntax
