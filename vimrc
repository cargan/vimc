""" PATHOGEN
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines


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
syntax on
filetype plugin indent on
au FileType php set keywordprg=:help
set nu

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

colorscheme twilight

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
set keywordprg=pman

au FileType javascript setl sw=2 sts=2 et
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" hi IndentGuidesOdd  ctermbg=gray
" hi IndentGuidesEven ctermbg=lightgray
let g:indent_guides_start_level = 2
set ts=2 sw=2 et
