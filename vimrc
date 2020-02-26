" Function to source only if file exists
function! SourceIfExists(file)
  if filereadable(expand(a:file))
      exe 'source' a:file
  endif
endfunction

syntax enable

set nu
set backspace=indent,eol,start
set mouse=a
set smartindent
set foldmethod=syntax

call SourceIfExists("~/dotfiles/local/vimrc")

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" For PuTTY, add export TERM=xterm-256color to .bashrc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/seoul256.vim'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1

let g:seoul256_background = 234
let g:seoul256_srgb = 1
colo seoul256

let g:gutentags_project_root = ['Makefile']
