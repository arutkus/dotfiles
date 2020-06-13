call plug#begin('~/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " $HOME/nvim/pluggedconf/coc.nvimrc

"--- Snippets ---
Plug 'SirVer/ultisnips' " $HOME/nvim/pluggedconf/ultisnips.nvimrc
Plug 'honza/vim-snippets'

"--- Appearance ---
Plug 'lifepillar/vim-gruvbox8'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim' " $HOME/nvim/pluggedconf/lightline.nvimrc

"--- Organize/MD --
Plug 'junegunn/goyo.vim', " $HOME/nvim/pluggedconf/goyo.nvimrc
Plug 'junegunn/limelight.vim', " $HOME/nvim/pluggedconf/limelight.nvimrc
Plug 'vimwiki/vimwiki' " $HOME/nvim/pluggedconf/vimwiki.nvimrc

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"--- GIT ---
Plug 'tpope/vim-fugitive'

"--- Search tools ---
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim' " $HOME/nvim/pluggedconf/fzf.nvimrc
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'

"--- Text edit ---
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary' " $HOME/nvim/pluggedconf/vim-commentary.nvimrc
Plug 'jiangmiao/auto-pairs'

"--- Dev helpers ---
Plug 'janko/vim-test', {'for': 'php'} " $HOME/nvim/pluggedconf/vim-test.nvimrc
Plug 'christoomey/vim-tmux-navigator' " $HOME/nvim/pluggedconf/vim-tmux-navigator.nvimrc
"
"--- Miscellaneous
Plug 'baverman/vial', {'for': 'vial-http'} " <leader><cr>
Plug 'baverman/vial-http', {'for': 'vial-http'}
Plug 'voldikss/vim-floaterm' " $HOME/nvim/pluggedconf/vim-floaterm.nvimrc

"--- Python ---
"Plug 'davidhalter/jedi-vim', { 'for': 'python' } "$HOME/nvim/pluggedconf/jedi.nvimrc

"--- Go ---
"Plug 'fatih/vim-go', { 'for': 'go' }

call plug#end()

source $HOME/nvim/config/settings.nvimrc
source $HOME/nvim/config/variables.nvimrc
source $HOME/nvim/config/commands.nvimrc
source $HOME/nvim/config/abbreviations.nvimrc

source $HOME/nvim/config/mappings/insert.nvimrc
source $HOME/nvim/config/mappings/visual.nvimrc
source $HOME/nvim/config/mappings/normal.nvimrc
source $HOME/nvim/config/mappings/plugs.nvimrc

" source every plugin configs
for file in split(glob("~/nvim/pluggedconf/*.nvimrc"), '\n')
    exe 'source' file
endfor
