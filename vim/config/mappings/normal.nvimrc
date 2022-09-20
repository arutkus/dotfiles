"---LEADER--"
nnoremap <leader><leader>r :source $MYVIMRC<CR>
nnoremap <leader>o :only<CR>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
map <silent><Leader><esc> :noh<cr>
nmap <Leader>now :r!date "+\%A \%b \%d \%Y \%T"<cr>

" Plugin: fzf
nmap <C-f> :Files<CR>
nmap <Leader>f :GFiles<CR>
nnoremap <Leader>g :Rg<CR>

" Plugin: fern
"noremap <silent> <Leader>= :Fern . -drawer -reveal=% -toggle -width=35<CR><C-w>=
noremap <silent> <Leader>= :Fern . -drawer -reveal=%:h -toggle -width=35<CR><C-w>=

"Plugin: lightlineBuffer
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
nmap <Leader><Leader>1 <Plug>lightline#bufferline#delete(1)
nmap <Leader><Leader>2 <Plug>lightline#bufferline#delete(2)
nmap <Leader><Leader>3 <Plug>lightline#bufferline#delete(3)
nmap <Leader><Leader>4 <Plug>lightline#bufferline#delete(4)
nmap <Leader><Leader>5 <Plug>lightline#bufferline#delete(5)
nmap <Leader><Leader>6 <Plug>lightline#bufferline#delete(6)
nmap <Leader><Leader>7 <Plug>lightline#bufferline#delete(7)
nmap <Leader><Leader>8 <Plug>lightline#bufferline#delete(8)
nmap <Leader><Leader>9 <Plug>lightline#bufferline#delete(9)
nmap <Leader><Leader>0 <Plug>lightline#bufferline#delete(10)

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

nnoremap <TAB> :bnext<cr>
nnoremap <S-TAB> :bprevious<cr>
nnoremap Y y$

" tabs
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>
" move tab to first position
nnoremap tH :tabm 0<CR>
nnoremap tL :tabm<CR>

nnoremap <space> zz
nnoremap n nzz
nnoremap N Nzz
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $

"Do not show stupid q: window
map q: :q 

" Edit the alternate / previously edited file
nmap \\ <C-^>

" Plugin: COC
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Plugin: Goyo
nnoremap <Leader><cr> :Goyo<cr>

" Plugin: tmux-navigator
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-/> :TmuxNavigatePrevious<cr>

nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>
