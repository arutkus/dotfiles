call plug#begin('~/nvim/plugged')

" $HOME/nvim/pluggedconf/vim-tmux-navigator.nvimrc
Plug 'christoomey/vim-tmux-navigator'

"--- Completion ---
" $HOME/nvim/pluggedconf/deoplete.nvimrc
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'                       " Deoplete dependency
Plug 'roxma/vim-hug-neovim-rpc'              " Deoplete dependency
Plug 'kristijanhusak/deoplete-phpactor'      " PHP Deoplete source

"--- Linting ---
" $HOME/nvim/pluggedconf/ale.nvimrc
Plug 'w0rp/ale'

"-- SQL queries -- yy then :@" "
Plug 'tpope/vim-dadbod'

"-- Sum line(s)  - <lea>?=
"-- Sum one col  - <lea><lea>?s
"-- Sum line col - <lea>?=s
Plug 'sk1418/HowMuch'

"--- To run API query under cursor <lea><cr>
Plug 'baverman/vial'
Plug 'baverman/vial-http'

"--- Appearance ---
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-gruvbox8'
Plug 'sheerun/vim-polyglot'
"Plug 'posva/vim-vue'

"--- Organize/MD --
Plug 'mhinz/vim-startify' "Startup screen
Plug 'vimwiki/vimwiki'
Plug 'SidOfc/mkdx', { 'for': 'markdown' } " lot of keystroke for markdown
Plug 'junegunn/goyo.vim', { 'for': ['markdown','text'] } " Distraction-free
Plug 'junegunn/limelight.vim', { 'for': ['markdown','text'] } " Hyperfocus-writing

"--- GIT ---
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" $HOME/nvim/pluggedconf/gitgutter.nvimrc
Plug 'airblade/vim-gitgutter'

"--- Togglers ---
" $HOME/nvim/pluggedconf/nerdtree.nvimrc
Plug 'scrooloose/nerdtree'
" $HOME/nvim/pluggedconf/tagbar.nvimrc
Plug 'majutsushi/tagbar'
" $HOME/nvim/pluggedconf/vim-peekaboo.nvimrc
Plug 'junegunn/vim-peekaboo'

"--- Search tools ---
Plug '/usr/local/opt/fzf'
" $HOME/nvim/pluggedconf/fzf.nvimrc
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'

"--- Snippets ---
" $HOME/nvim/pluggedconf/ultisnips.nvimrc
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"--- Text edit ---
Plug 'machakann/vim-highlightedyank'      " Highlight briefly every yank text
Plug 'tpope/vim-surround'                 " Surround with whatever cs, ds, yss
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

"--- PHP ---
" $HOME/nvim/pluggedconf/vim-test.nvimrc
Plug 'janko/vim-test' 
" $HOME/nvim/pluggedconf/phpactor.nvimrc
Plug 'phpactor/phpactor',
  \ {'for': 'php', 'do': 'composer install'} " PHP refactoring and introspection
" $HOME/nvim/pluggedconf/pdv.nvimrc
Plug 'tobyS/pdv'                             " PHP docblocks
Plug 'tobyS/vmustache'                       " PHP docblocks dependency
" $HOME/nvim/pluggedconf/vim-php-manual.nvimrc
Plug 'alvan/vim-php-manual'                  " PHP help
" $HOME/nvim/pluggedconf/vdebug.nvimrc
Plug 'vim-vdebug/vdebug'                     " Debugging

call plug#end()

source $HOME/nvim/config/settings.nvimrc
source $HOME/nvim/config/variables.nvimrc
source $HOME/nvim/config/commands.nvimrc
source $HOME/nvim/config/abbreviations.nvimrc

source $HOME/nvim/config/mappings/insert.nvimrc
source $HOME/nvim/config/mappings/visual.nvimrc
source $HOME/nvim/config/mappings/normal.nvimrc
source $HOME/nvim/config/mappings/leader.nvimrc

" source every plugin configs
for file in split(glob("~/nvim/pluggedconf/*.nvimrc"), '\n')
    exe 'source' file
endfor

