
" un-highlight when esc is pressed
map <silent><esc> :noh<cr>

nnoremap Y y$

"disable arrows
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

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

" tabs
 nnoremap th :tabfirst<CR>
 nnoremap tk :tabnext<CR>
 nnoremap tj :tabprev<CR>
 nnoremap tl :tablast<CR>
 nnoremap tn :tabnew<CR>

" move tab to first position
 nnoremap tF :tabm 0<CR>
 nnoremap tL :tabm<CR>

" windows navigation
" use ctrl + hjkl
"nnoremap <leader>ww <c-w>w
"nnoremap <c-h> <c-w>h
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-l> <c-w>l
