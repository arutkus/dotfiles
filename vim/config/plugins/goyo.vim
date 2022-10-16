"Plugin: GOYO

Plug 'junegunn/goyo.vim'

nnoremap <Leader><cr> :Goyo<cr>

let g:goyo_width=140
let g:goyo_height=250

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  hi Normal ctermbg=NONE guibg=NONE
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=0
  hi Normal ctermbg=NONE guibg=NONE
endfunction
