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

" un-highlight when esc is pressed
map <silent><esc> :noh<cr>

"disable arrows
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" buffers
nmap gn :bn<cr>
nmap gp :bp<cr>
nmap gd :bd<cr>

" tabs
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>

" move tab to first position
nnoremap tH :tabm 0<CR>
nnoremap tL :tabm<CR>

nnoremap Y y$

" Center the screen
nnoremap <space> zz
" Print full path
nnoremap <silent> <F5> :source $MYVIMRC<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzz
nnoremap N Nzz

" Same when moving up and down
"noremap <C-d> <C-d>zz
"noremap <C-u> <C-u>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $

" Do not show stupid q: window
map q: :q

"leader mappings
nnoremap <leader>v :vsplit $MYVIMRC<cr>
nnoremap <leader>o :only<CR>
" Quit
nmap <Leader>q :q<CR>
" Write
nmap <Leader>w :w<CR>

" windows creation
" create window on the bottom
nnoremap <leader>wb <c-w>s
" create vertical window
nnoremap <leader>wv <c-w>v

" Edit the alternate / previously edited file
nmap \\ <C-^>

"Toggle between absolute -> relative line number
nnoremap <leader><f1> :let [&nu, &rnu] = [&nu, &nu+&rnu==1]<CR>

nnoremap <leader>= :FormatJSON<CR>
