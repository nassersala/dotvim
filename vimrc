call pathogen#infect()

set background=dark nocompatible
set directory=/tmp//

map ,w :w<cr>


let g:solarized_termcolors=256
colorscheme solarized

"for clang autocomplete
let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
let mapleader=","
nmap <leader>gc :silent Git add -A\|:Gcommit<CR>
map <leader>l :ListMethods

set guioptions-=r " removes right hand scroll bar
set go-=l " removes left hand scroll bar
autocmd user rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

imap jj <esc>
"map saving (:w) to ctl+s
nnoremap <silent> <c-s> :if expand("%") == ""<cr>browse confirm w<cr>else<cr>confirm w<cr>endif<cr>
"edit at start of the line
map <silent> <C-h> ^cw
"duplicate line
vmap D y'>p

set nobackup
set noswapfile

"folding settings
set foldmethod=indent "fold based on indent
set foldnestmax=10    "deepest fold is 10 levels
set nofoldenable      "dont fold by default
set foldlevel=1

"basic settings I took it from
"http://mislav.uniqpath.com/2011/12/vim-revisited/
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
""""""""""""""""""""""""""

"for ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'

" ui stuff
" Always show tab bar
set number
set showtabline=2
set cmdheight=2

"gary stuff
"easy alternating between files
map ,, <C-^>
