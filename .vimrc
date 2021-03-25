" Enable syntax highlighting
syntax on

" Set tabs to 2 spaces
set expandtab tabstop=2 shiftwidth=2

" Display whitespace
set list listchars=tab:».,trail:-,nbsp:·

" Italics
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Show line numbers
set number

" Show the cursor *all* the time
set ruler
set splitright

" autocompletion to match bash
set wildmode=longest,list
set wildmenu

" Yank to clipboard
if has("clipboard")
  "set clipboard=unnamedplus
  set clipboard=unnamed
endif

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

" Rspec.vim key mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Enable Github flavored markdown previews
let vim_markdown_preview_github = 1

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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Async Lint Engine
Plug 'dense-analysis/ale'

" Javascript specific
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Typescript specific
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" Ruby specific
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tpope/vim-endwise'
Plug 'thoughtbot/vim-rspec'

" Python specific
Plug 'vim-python/python-syntax'
Plug 'ambv/black'

" Elixir specific
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

" Golang specific
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Rust specific
Plug 'rust-lang/rust.vim'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Preview Markdown Files
Plug 'jamshedvesuna/vim-markdown-preview'

call plug#end()

" Run mix formatter on save
let g:mix_format_on_save = 1

let g:python_highlight_all=1

" ESLint format on save
let g:ale_fixers = {
\  'javascript': ['eslint'],
\  'typescript': ['eslint'],
\  'json': [],
\  'ruby': ['rubocop'],
\}
let g:ale_fix_on_save = 1

" Set ruby syntax highlight scheme
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" Rust autoformat on save
let g:rustfmt_autosave = 1

" Dart
let g:dart_format_on_save = 1
let dart_html_in_string=v:true
let g:dart_style_guide = 2

" On-save commands
autocmd BufWritePre *.py execute ':Black'

" Typescript compile on save
autocmd BufWritePost *.ts silent! execute "!npx tsc >/dev/null 2>&1"
