highlight RedundantWhitespace guibg=indianred
match RedundantWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinEnter * match RedundantWhitespace /\s\+$\| \+\ze\t/

"set colorcolumn=81
