" Enable syntax highlighting
syntax on

" Set tabs to 2 spaces
set expandtab tabstop=2 shiftwidth=2

" Show line numbers
set number

" Enable JSX syntax highlighting in js files
let g:jsx_ext_required = 0

" Disable line scrolling in insert mode
set mouse=a

" Disable scroll moving the 'viewport'
noremap <ScrollWheelUp> <nop>
noremap <S-ScrollWheelUp> <nop>
noremap <C-ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>
noremap <S-ScrollWheelDown> <nop>
noremap <C-ScrollWheelDown> <nop>
noremap <ScrollWheelLeft> <nop>
noremap <S-ScrollWheelLeft> <nop>
noremap <C-ScrollWheelLeft> <nop>
noremap <ScrollWheelRight> <nop>
noremap <S-ScrollWheelRight> <nop>
noremap <C-ScrollWheelRight> <nop>

" Begin vim-plug setup
call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()
