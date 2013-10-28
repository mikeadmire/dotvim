set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" All my bundles
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-endwise'
Bundle 'jnwhiteh/vim-golang'
Bundle 'thoughtbot/vim-rspec'
Bundle "pangloss/vim-javascript"
Bundle "tpope/vim-markdown"

:filetype indent on
:filetype plugin on

"set smartindent
"set expandtab
"set tabstop=2
set shiftwidth=2
set softtabstop=2
if has("autocmd")
  au BufReadPost * if &modifiable | retab | endif
endif

let mapleader = ","

let NERDTreeShowHidden=1
map <Leader>d :NERDTreeToggle<CR>

" remove highlighting from searched text by hitting the backspace key
nmap <silent> <BS> :nohlsearch<CR>

" autosave file when exit or change buffer
set autowrite

" set keystroke sync to xx keystrokes - possibly hard on battery
"set updatecount=10
" forces sync to disk - can be hard on an SSD drive - possibly hard on battery
"set swapsync

syntax on
colorscheme koehler

if has("gui_running")
  set guifont=DejaVu\ Sans\ Mono:h14.00
  set lines=45
  set columns=140
endif

" Run shortcut for different file types
au FileType python map <leader>r :!python %<CR>
au FileType go map <leader>r :!go run %<CR>
au FileType c map <leader>r :!gcc %; ./a.out<CR>
au FileType cpp map <leader>r :!g++ %; ./a.out<CR>
au FileType ruby map <leader>r :!ruby %<CR>
au FileType perl map <leader>r :!perl %<CR>
au FileType php map <leader>r :!php %<CR>
au FileType javascript map <leader>r :!node %<CR>
au FileType coffee map <leader>r :!coffee %<CR>
au FileType coffee map <leader>c :!coffee -c %<CR>
au FileType coffee map <leader>p :!coffee -p %<CR>

" rspec
au FileType ruby map <leader>s :call RunCurrentSpecFile()<CR>
au FileType ruby map <leader>ss :call RunNearestSpec()<CR>
au FileType ruby map <leader>l :call RunLastSpec()<CR>
au FileType ruby map <leader>a :call RunAllSpecs()<CR>


" Abbreviations
ab myww http://mikeadmire.com
ab mye mikeadmire@gmail.com
ab <expr> TS strftime("%c")
