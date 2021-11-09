let mapleader = "-"
let maplocalleader = "\\"

"disable .netrwhist file
let g:netrw_dirhistmax = 0

let g:ackprg = 'ag --vimgrep --smart-case' 

let g:go_term_enabled = 1
let g:go_term_mode = "silent keepalt rightbelow 15 split"
let g:go_def_reuse_buffer = 1
let g:go_term_reuse = 1

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

"Plugin: Sneak
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
"map gS <Plug>Sneak_,
"map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00d423 ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

"Plugin: floaterm
let g:floaterm_keymap_toggle = '§'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

"Plugin: Fern
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

" Custom settings and mappings.
let g:fern#disable_default_mappings = 1
let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1
