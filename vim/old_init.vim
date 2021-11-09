call plug#begin('~/vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " $HOME/nvim/pluggedconf/coc.nvimrc

"--- Appearance ---
Plug 'lifepillar/vim-gruvbox8'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim' " $HOME/nvim/pluggedconf/lightline.nvimrc

"--- Organize/MD --
Plug 'junegunn/goyo.vim', " $HOME/nvim/pluggedconf/goyo.nvimrc
Plug 'junegunn/limelight.vim', " $HOME/nvim/pluggedconf/limelight.nvimrc

"--- GIT ---
Plug 'tpope/vim-fugitive'

"--- Search tools ---
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim' " $HOME/nvim/pluggedconf/fzf.nvimrc
Plug 'jremmen/vim-ripgrep'

"--- Text edit ---
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-commentary' " $HOME/nvim/pluggedconf/vim-commentary.nvimrc
Plug 'jiangmiao/auto-pairs'

"--- Dev helpers ---
Plug 'janko/vim-test', {'for': 'php'} " $HOME/nvim/pluggedconf/vim-test.nvimrc
Plug 'christoomey/vim-tmux-navigator' " $HOME/nvim/pluggedconf/vim-tmux-navigator.nvimrc
"----------------"

"--- Python ---
"Plug 'davidhalter/jedi-vim', { 'for': 'python' } "$HOME/nvim/pluggedconf/jedi.nvimrc

"--- Go ---
Plug 'govim/govim', { 'for': 'go' }
"Plug 'fatih/vim-go', { 'for': 'go' }

"--- Snippets ---
"Plug 'SirVer/ultisnips' " $HOME/nvim/pluggedconf/ultisnips.nvimrc
"Plug 'honza/vim-snippets'

"--- Other ---
"Plug 'vimwiki/vimwiki' " $HOME/nvim/pluggedconf/vimwiki.nvimrc
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'


call plug#end()

source $HOME/vim/config/settings.nvimrc
source $HOME/vim/config/variables.nvimrc
source $HOME/vim/config/commands.nvimrc
source $HOME/vim/config/abbreviations.nvimrc

source $HOME/vim/config/mappings/insert.nvimrc
source $HOME/vim/config/mappings/visual.nvimrc
source $HOME/vim/config/mappings/normal.nvimrc
source $HOME/vim/config/mappings/plugs.nvimrc


" source every plugin configs
for file in split(glob("~/vim/pluggedconf/*.nvimrc"), '\n')
    exe 'source' file
endfor
