call pathogen#infect()

filetype plugin on
filetype indent on

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
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
  set lines=60
  set columns=150
endif

" Run shortcut for different file types
au FileType python map <leader>r :!python %<CR>

au FileType c map <leader>r :!gcc %; ./a.out<CR>
au FileType cpp map <leader>r :!g++ %; ./a.out<CR>

au FileType ruby map <leader>r :!ruby %<CR>
au FileType ruby map <leader>rs :!rspec<CR>
au FileType ruby map <leader>ss :!rspec %<CR>

au FileType perl map <leader>r :!perl %<CR>
au FileType php map <leader>r :!php %<CR>

au FileType javascript map <leader>r :!node %<CR>
au FileType coffee map <leader>r :!coffee %<CR>
au FileType coffee map <leader>c :!coffee -c %<CR>
au FileType coffee map <leader>p :!coffee -p %<CR>



" Abbreviations
ab myww http://mikeadmire.com
ab mye mikeadmire@gmail.com
ab <expr> TS strftime("%c")
