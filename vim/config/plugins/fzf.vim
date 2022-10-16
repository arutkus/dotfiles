"Plugin: FZF

if isdirectory("/usr/local/opt/fzf") 
  Plug '/usr/local/opt/fzf' 
else 
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
 endif 
Plug 'junegunn/fzf.vim'

nmap <C-f> :Files<CR>
nmap <Leader>f :GFiles<CR>
nnoremap <C-g> :Rg<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-b': 'split',
  \ 'ctrl-v': 'vsplit' 
  \ }

" let g:fzf_colors = {
"   \ 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Label'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Label'],
"   \ 'info':    ['fg', 'Comment'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Function'],
"   \ 'pointer': ['fg', 'Statement'],
"   \ 'marker':  ['fg', 'Conditional'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}),  <bang>0)
