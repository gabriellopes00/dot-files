" Phatogen (NERDTree, vim-airline, vim-autopairs(jiangmiao), surround)
execute pathogen#infect()

" Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }           " theme
Plug 'matsuuu/pinkmare'                           " theme
Plug 'gko/vim-coloresque'                         " color highlight
Plug 'jparise/vim-graphql'                        " graphql sintax highlighting
Plug 'airblade/vim-gitgutter'                     " git fixtures
Plug 'terryma/vim-multiple-cursors'               " multiple cursors (fp<C-n><C-n><C-n>cname)
Plug 'neoclide/coc.nvim', {'branch': 'release'}   " languages intellicense
let g:coc_global_extensions = ['coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

call plug#end()

"Nerd Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Airline
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1

" vit git-gutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)

" vim-coc
source ~/.vim/settings/vim-coc.vim

" custom shortcuts
nnoremap <leader>; I//<esc>

"colorscheme pinkmare
"hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFF00
colorscheme dracula         " theme

let $LANG='en'              " english language
set langmenu=en             " menu language

filetype off                " disable file type detection
filetype indent on          " sintax highlight by filetype
filetype plugin indent on   " use the file type plugins

syntax on               " enable syntax highlighting
set ruler               " show the cursor position
set colorcolumn=100     " set a ruler line on 100º column
set nomodeline          " ignore file’s mode lines; use vimrc configurations instead
set wrap                " wrap words on screen width
set linebreak           " avoid wrapping a line in the middle of a word
set scrolloff=5         " keep 5 lines off the edges of the screen when scrolling
set backspace=indent,eol,start
set ttyfast
set laststatus=2        " tell VIM to always put a status line in, even if there is only one window
set nu!                 " set number lines
set noswapfile          " disable swap files
set nocompatible        " don't try to be vi compatible
set hidden              " allow open other file if the current is not saved

set tabstop=2           " set 2 tab spaces
set shiftwidth=2        " set 2 shift spaces
set softtabstop=2       " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab           " expand tabs to spaces by default
set noshiftround        " don't use multiple of shiftwidth when indenting with '<' and '>'
set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting
set smarttab            " insert tabs on the start of a line according to shiftwidth, not tabstop

set showmode            " show current mode (visual, insert, normal...)
set showcmd             " show (partial) command in the last line of the screen this also shows visual selection info

set showmatch           " show matching parenthesis
set matchpairs+=<:>     " match pairs with <>

set list                " show empty characters, below the characters...
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set visualbell          " flash the screen instead of beeping on errors
set noerrorbells        " don't beep

set encoding=utf-8      " encoding utf-8
set termencoding=utf-8  " terminal encoding utf-8

set hlsearch            " highlight words in search
set incsearch           " show search matches as you type
set ignorecase          " ignore uppercase and lowercase in search, highlight both in search
set smartcase           " highlight only uppercases if search with uppercase

set mouse=a             " use mouse in visual mode
set cursorline          " highlight line current line number

set wildmenu            " make tab completion for files/buffers act like bash
set wildmode=list:full  " show a list when pressing tab and complete
set confirm             " confirm menu on exit without saving
set title               " put filename on title of terminal