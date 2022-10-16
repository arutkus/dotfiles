Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'

noremap <silent> <Leader>= :Fern . -drawer -reveal=%:h -toggle -width=35<CR><C-w>=

"Plugin: Fern
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

let g:fern#disable_default_mappings = 1
let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1
let g:fern#default_hidden = 1

function! s:hijack_directory() abort
  let path = expand('%:p')
  if !isdirectory(path)
    return
  endif
  bwipeout %
  execute printf('Fern %s', fnameescape(path))
endfunction

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:edit-or-error)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer><nowait> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer><nowait> n <Plug>(fern-action-new-path)
  nmap <buffer><nowait> d <Plug>(fern-action-remove)
  nmap <buffer><nowait> R <Plug>(fern-action-move)
  nmap <buffer><nowait> y <Plug>(fern-action-clipboard-copy)
  nmap <buffer><nowait> p <Plug>(fern-action-clipboard-paste)
  nmap <buffer><nowait> r <Plug>(fern-action-rename)
  nmap <buffer><nowait> ` <Plug>(fern-action-hidden-toggle)
  nmap <buffer><nowait> = <Plug>(fern-action-reload)
  nmap <buffer><nowait> m <Plug>(fern-action-mark:toggle)
  nmap <buffer>         - <Plug>(fern-action-open:split)
  nmap <buffer><nowait> \ <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
  nmap <buffer><nowait> cd <Plug>(fern-action-cd)
  nmap <buffer><nowait> ff <Plug>(fern-action-fzf-files)
  nmap <buffer><nowait> fd <Plug>(fern-action-fzf-dirs)
endfunction

augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END
