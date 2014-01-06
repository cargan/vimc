""" PATHOGEN
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

set number
set ruler
syntax on
set list listchars=tab:▸\ ,eol:¬,trail:·
set noeol
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Window settings
set wrap
set lbr
set textwidth=0
set cursorline

" Use modeline overrides
set modeline
set modelines=10

" Status bar
set laststatus=2
set statusline=%t\ %h%m%r%w\ [%{strlen(&ft)?&ft:'none'}\|%{&ff}\|%{strlen(&fenc)?&fenc:&enc}]%=[%l,%L,\ %c]]
set guifont=Source\ Code\ Pro:h13

" Context-dependent cursor in the terminal
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7""

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

" Persistent undos
if !&diff
  set undodir=~/.vim/backup
  set undofile
endif

set clipboard=unnamed

" Save on blur
au FocusLost * :wa

" Save on blur for terminal vim
au CursorHold,CursorHoldI * silent! wa

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system
set gfn=Monospace\ 12
set shell=/bin/bash
set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

" Always display a status line at the bottom of the window
set laststatus=2

" Keep 3 lines visible down from the cursor while scrolling
set scrolloff=5

" Ignore case in search and replace
set ignorecase

" Found text will be highlighted and search will be repeated over file
set incsearch

" Smart search: if lowercase ignore case of matches, if not case-sensitive
set smartcase

" Show matching for symbols like () and etc.
set showmatch



" Remove trailing spaces after save
au BufWritePre * silent g/\s\+$/s///





set autoread
filetype plugin indent on
au FileType php set keywordprg=:help

:command Vs vs
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command ZA q | q | q | q | q

set colorcolumn=80

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


set spelllang=lt,en

set pastetoggle=<F2>
map <F3> :BufExplorer<CR>
map <F4> :NERDTreeToggle<CR>
map <F5> :MRU<CR>
map <F6> :set hlsearch! hlsearch?<CR>
map <F7> :TagbarToggle<CR>
map <F8> :TlistToggle<CR>
map <F9> :FufFile<CR>

autocmd BufWritePre * :%s/\s\+$//e



" Colors ================================================================= {{{

" Enable syntax highlighting
syntax on
" Highlight found search elements
set hlsearch

" Transparent bacground
" highlight Normal ctermbg=none

" " Enable CursorLine
" set cursorline
"
" " Default Colors for CursorLine
" highlight CursorLine
"     \ cterm=NONE
"     \ ctermbg=darkblue
"     \ ctermfg=red
"     \ guibg=darkblue
"     \ guifg=red

" set t_Co=256
" set t_Co=16
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
syntax enable

colorscheme Tomorrow-Night

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
autocmd InsertEnter * highlight CursorLine guifg=white guibg=blue ctermfg=white ctermbg=blue
autocmd InsertLeave * hi CursorLine term=bold cterm=bold guibg=Grey40


" Backups and swap ======================================================= {{{

set backup
set backupdir=/tmp
set noswapfile

" }}}

autocmd BufNewFile,Bufread *.php,*.php3,*.php4 set keywordprg="help"
autocmd BufNewFile,BufRead *.html.twig   set syntax=html
au BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.{twig}  set ft=htmljinja

set keywordprg=pman

" au FileType javascript setl sw=4 sts=4 et
" php settings
" au filetype php setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab colorcolumn=80
" Javascript settings
" au FileType javascript setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab colorcolumn=80

" hi IndentGuidesOdd  ctermbg=gray
" hi IndentGuidesEven ctermbg=lightgray
let g:indent_guides_start_level = 4
" set ts=2 sw=2 et

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" CTags
" Generate ctags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Go to the next tag.
map <C-\> :tnext<CR>
" CTags
let g:tlist_php_settings = 'php;c:class;d:constant;f:function'

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$']
map <Leader>n :NERDTreeToggle<CR>

" Enable syntastic syntax checking
let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1
let g:syntastic_php_checkers=['php']

" Airline
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
" let g:airline_theme='solarized'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_solarized_reduced = 0
