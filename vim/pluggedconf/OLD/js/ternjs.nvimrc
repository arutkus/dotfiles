let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '1' " This do disable full signature type on autocomplete
let g:tern#filetypes = [ 'jsx', 'javascript.jsx', 'vue', 'javascript']

if !has('python') && !has('python3')
  echo 'tern requires python support'
  finish
endif

call tern#Enable()

" Menu 
menu <silent> Tern.Jump\ To\ Defintion :TernDef<CR>
menu <silent> Tern.See\ Documentation :TernDoc<CR>
menu <silent> Tern.DataType :TernType <CR>
menu <silent> Tern.Show\ all\ References :TernRefs<CR>
menu <silent> Tern.Rename :TernRename <CR> 

map <leader>] :TernDef<CR>
