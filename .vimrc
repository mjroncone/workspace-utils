" Enable syntax highlighting
syntax on
set background=dark

" Set tabs to 2 spaces
set expandtab tabstop=2 shiftwidth=2

" Display whitespace
set list listchars=tab:».,trail:-,nbsp:·

" Show line numbers
set number

" Show the cursor *all* the time
set ruler

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

" Run mix formatter on save
let g:mix_format_on_save = 1

" Ensure vim-plug and plugs installed on start
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Begin vim-plug setup
call plug#begin('~/.vim/plugged')

" Interacting with filesystem
Plug 'scrooloose/nerdtree'

"Javascript specific
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"Elixir specific
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

call plug#end()
