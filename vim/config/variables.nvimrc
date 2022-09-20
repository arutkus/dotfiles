let mapleader = "-"
let maplocalleader = "\\"

"disable .netrwhist file
let g:netrw_dirhistmax = 0

"Plugin: wiki
let g:wiki_root = '~/Dropbox/Apps/wiki'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'

"Plugin: mkdx
let g:mkdx#settings = {
  \'tab': { 'enable': 0  },
  \'enter': { 'enable': 0 },
\}

"Plugin: FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-b': 'split',
  \ 'ctrl-v': 'vsplit' 
  \ }

let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Label'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Label'],
  \ 'info':    ['fg', 'Comment'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Function'],
  \ 'pointer': ['fg', 'Statement'],
  \ 'marker':  ['fg', 'Conditional'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


"Plugin: Tmux-Navigator
let g:tmux_navigator_no_mappings = 1

"Plugin: GOYO
let g:goyo_width=140
let g:goyo_height=250
"
"Plugin: Limelight
let g:limelight_conceal_ctermfg = 'DarkGrey'

"Plugin: Lightline
let g:lightline = {
  \   'colorscheme': 'powerlineish',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified', 'cocstatus' ] ]
  \   },
  \   'tabline': {
  \     'left':[ [ 'buffers' ] ],
  \     'right':[ [ 'close' ] ],
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
	\   'component_expand': {
	\     'buffers': 'lightline#bufferline#buffers',
	\   },
	\   'component_type': {
	\     'buffers': 'tabsel',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
	\			'cocstatus': 'coc#status'
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

"Plugin: vim-surrond 
let b:surround_{char2nr('c')} = "```\r```" "Use Sc in visual mode to surround with ```  ```

"Plugin: Fern
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

let g:fern#disable_default_mappings = 1
let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1
let g:fern#default_hidden = 1

