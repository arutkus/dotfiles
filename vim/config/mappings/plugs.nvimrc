inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" Plugin: Goyo
noremap <cr><cr> :Goyo<cr>

" Plugin: nerdtree
"nmap <Leader><Tab> :NERDTreeToggle<CR>
"nmap <Leader><Leader><Tab> :NERDTreeFind<CR>zz

" Plugin: fzf
nmap <C-f> :GFiles<CR>
nmap <Leader>f :Files<CR>
nmap <C-t> :BTags<CR>
nmap <C-b> :Buffers<CR>
nmap <Leader>l :Lines<CR>
nmap <Leader>L :BLines<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>' :Marks<CR>
nnoremap <leader>5 :Rg<cr>
nnoremap <leader>6 :exec "Rgi ".expand("<cword>")<cr>

" Plugin: test
nmap <Leader>ts :w<CR>:TestSuite<CR>
nmap <Leader>tf :w<CR>:TestFile<CR>
nmap <Leader>tl :w<CR>:TestLast<CR>
nmap <Leader>tn :w<CR>:TestNearest<CR>
if has('nvim')
  tmap <Leader><esc> <C-\><C-n>
endif

" Plugin: tmux-navigator
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-/> :TmuxNavigatePrevious<cr>

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:60%'), <bang>0)


