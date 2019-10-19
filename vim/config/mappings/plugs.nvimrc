" Plugin: deoplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" Plugin: ale
nnoremap <Leader><Leader>a :ALEToggle<CR>
nnoremap <Leader>if :ALEFix<CR>

" Plugin: Goyo
nnoremap <buffer><leader>G :Goyo<cr>

" Plugin: nerdtree
nmap <Leader><Tab> :NERDTreeToggle<CR>
nmap <Leader><Leader><Tab> :NERDTreeFind<CR>zz

" Plugin: fzf
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
" nmap <Leader>m :Methods<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>h :History<CR>
" nmap <Leader>H :GHistory<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>s :Filetypes<CR>
nmap <Leader>S :Snippets<CR>
nmap <Leader><Leader>h :Helptags!<CR>
nnoremap <leader>5 :Rg<cr>
nnoremap <leader>6 :exec "Rgi ".expand("<cword>")<cr>

" Plugin: test
nmap <Leader>rt :w<CR>:TestToggleStrategy<CR>
nmap <Leader>rs :w<CR>:TestSuite<CR>
nmap <Leader>rf :w<CR>:TestFile<CR>
nmap <Leader>rl :w<CR>:TestLast<CR>
nmap <Leader>rn :w<CR>:TestNearest<CR>
nmap <Leader>rv :w<CR>:TestVisit<CR>
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

" Plugin: vdebug
nnoremap <Leader>B :Breakpoint<CR>
nnoremap <Leader>V :VdebugStart<CR>

" Plugin: tmux-navigator
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-/> :TmuxNavigatePrevious<cr>

" Plugin: phpactor
autocmd FileType php nnoremap <buffer> <Leader>i :call phpactor#ContextMenu()<CR>
autocmd FileType php nnoremap <buffer> <Leader>d :call phpactor#FindReferences()<CR>
autocmd FileType php nnoremap <buffer> <Leader>] :call phpactor#GotoDefinition()<CR>
autocmd FileType php nnoremap <buffer> <Leader>ii :call phpactor#UseAdd()<CR>
autocmd FileType php nnoremap <buffer> <Leader>it :call phpactor#Transform()<CR>
autocmd FileType php nnoremap <buffer> <Leader>ih :call phpactor#Hover()<CR>

" Plugin: pdv
autocmd FileType php nnoremap <buffer> <Leader>id :call pdv#DocumentWithSnip()<CR>

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:60%'), <bang>0)
