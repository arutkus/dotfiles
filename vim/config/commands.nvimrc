command! FormatJSON %!python -m json.tool

autocmd BufEnter * syntax sync fromstart
