"---LEADER--"
nnoremap <leader><leader>r :source $MYVIMRC<CR>
nnoremap <leader>o :only<CR>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
map <silent><Leader><esc> :noh<cr>
nmap <Leader>now :r!date "+\%A \%b \%d \%Y \%T"<cr>

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap Y y$

map gf :edit <cfile><CR>

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
