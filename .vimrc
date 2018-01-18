" Enable syntax highlighting
syntax on

" Set tabs to 2 spaces
set expandtab tabstop=2 shiftwidth=2

" Enable JSX syntax highlighting in js files
let g:jsx_ext_required = 0

" Begin vim-plug setup
call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()
