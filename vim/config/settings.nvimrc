
"---- SETTINGS -----

if &compatible
  set nocompatible
endif
filetype plugin indent on

"general settings
set clipboard=unnamedplus
set noswapfile
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set showmatch             " Matching brace
set visualbell            " Flash instead of bell

"appearance settings
syntax enable
set background=dark
colorscheme gruvbox8_hard

set t_cO=256
set relativenumber number
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
