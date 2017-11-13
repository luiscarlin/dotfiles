" Colors {{{
syntax enable           " enable syntax processing

" set Vim-specific sequences for RGB colors (before setting termguicolors)

colorscheme molokai

" }}}

" Spaces & Tabs & Delete {{{
set tabstop=2           " 2 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 2 space tab
filetype indent on      " load filetype-specific indent files
set backspace=indent,eol,start
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
nnoremap <leader><space> :nohlsearch<CR>     " turn off search highlight by pressing <SPACE>
" }}}
