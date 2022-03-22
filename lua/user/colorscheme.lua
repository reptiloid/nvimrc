vim.cmd [[
try
  " colorscheme darkplus
  colorscheme badwolf
  hi Visual cterm=NONE    ctermbg=cyan  ctermfg=black
  highlight Search none
  highlight Search guibg=black guifg=red
  hi Search cterm=reverse ctermbg=black ctermfg=red

  highlight Cursor guifg=white guibg=black
  highlight iCursor guifg=white guibg=steelblue


  set guicursor=n-v-c:block-Cursor
  set guicursor+=i:ver100-iCursor
  set guicursor+=n-v-c:blinkon0
  set guicursor+=i:blinkwait10
  set background=dark

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

vim.g.badwolf_darkgutter = 1
vim.g.badwolf_tabline = 1
