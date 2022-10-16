Plug 'itchyny/lightline.vim'

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

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
