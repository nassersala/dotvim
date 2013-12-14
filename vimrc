call pathogen#infect()

"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>


set directory=/tmp//

set background=light
colorscheme solarized


"for clang autocomplete
let mapleader=","
nmap <leader>gc :silent Git add -A\|:Gcommit<CR>
map <leader>l :ListMethods

"ensure all Objective-C sources are treated as such
au BufNewFile,BufRead *.h,*.m,*.pch set filetype=objc


set guioptions-=r " removes right hand scroll bar
set go-=l " removes left hand scroll bar
autocmd user rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

imap jk <esc>
"change last word
imap <leader>f <c-w>

"map saving (:w) to ctl+s
nnoremap <silent> <c-s> :if expand("%") == ""<cr>browse confirm w<cr>else<cr>confirm w<cr>endif<cr>
"edit at start of the line
map <silent> <C-h> ^cw
map <tab> <c-n>

map <leader>pn :sp ~/Dropbox/work/notes/project-notes.txt
map <leader>cn :sp ~/Dropbox/notes/unix-notes.txt
map ,w :w<cr>

"duplicate line
vmap D y'>p

"adjusts active window size
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

"use ack a default grepper and map control-n,p for easy nav
set grepprg=ack
map <c-n> :cn<cr>
map <c-b> :cp<cr>

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
set cursorline

"gary's stuff
"easy alternating between files
map ,, <C-^>
" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>
" Clears the search buffer when hitting retrun
:nnoremap <CR> :nohlsearch<cr>
noremap <leader><leader> <c-^>

""""""""""""""""""""""""""""""""""
"RENAME CURRENT FILE
"""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
"""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
:.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
:normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <leader>p :PromoteToLet<cr>
"
""""""""""""""""""""""""""""""""""""""""""
" cocoa stuff
"""""""""""""""""""""""""""""""""""""""""""
map <leader>l :ListMethods

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
set cursorline

"gary's stuff
"easy alternating between files
map ,, <C-^>
" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>
" Clears the search buffer when hitting retrun
:nnoremap <CR> :nohlsearch<cr>
noremap <leader><leader> <c-^>

""""""""""""""""""""""""""""""""""
"RENAME CURRENT FILE
"""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
"""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
:.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
:normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <leader>p :PromoteToLet<cr>
"
""""""""""""""""""""""""""""""""""""""""""
" cocoa stuff
"""""""""""""""""""""""""""""""""""""""""""
map <leader>l :ListMethods
