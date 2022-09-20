"---- SETTINGS -----
syntax enable
set nocompatible
filetype plugin indent on

"general settings
set clipboard^=unnamed
set clipboard^=unnamedplus
set noswapfile            " Don't use swapfile
set nobackup              " Don't create annoying backup files
set splitright            " Split vertical windows right to the current windows
set splitbelow            " Split horizontal windows below to the current windows
set autowrite             " Automatically save before :next, :make etc.

set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set noshowmatch           " Do not show matching brackets by flickering
set noshowmode            " We show the mode with airline or lightline
set ignorecase            " Search case insensitive...
set smartcase             " ... but not it begins with upper case 
set visualbell            " Flash instead of bell
set nofoldenable          " disable folding"
set conceallevel=1

set background=dark

colorscheme gruvbox8_hard
set nolazyredraw
hi Normal ctermbg=NONE guibg=NONE

set formatoptions-=cro    " Stop newline continution of comments
set showtabline=2         " always show tabs"
set nonumber
set cursorline            " highlight current line
set hlsearch              " highlight all searched
set incsearch             " highlight as you search
set numberwidth=6         " make the number gutter 6 characters wide
set laststatus=2          " last window always has a statusline
set ruler                 " Always show info along bottom.

set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

"spacing
set nowrap linebreak nolist
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smartindent           " automatically insert one extra level of indentation
set smarttab              " use tabs at the start of a line, spaces elsewhere

set hidden

set tags+=./.git/tags;
set path+=**
set wildmenu

set completeopt=menu,menuone,preview,noselect,noinsert

set shortmess+=c
set cmdheight=1
set updatetime=300
set signcolumn=no

set ttyfast
set re=0
set viminfo+=n~/logs/vim/viminfo

