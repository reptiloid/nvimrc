vim.cmd [[
try
  " colorscheme darkplus
  colorscheme badwolf
  " colorscheme onedarkpro
  " colorscheme gruvbox
    " colorscheme nordfox

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
  " set background=light

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]


local dark0 = "#282828"
local gray0 = "#928374"
local neutral_red = "#cc241d"
local bright_red = "#fb4934"
local neutral_green = "#98971a"
local bright_green = "#b8bb26"
local neutral_yellow = "#d79921"
local bright_yellow = "#fabd2f"
local neutral_blue = "#458588"
local bright_blue = "#83a598"
local neutral_purple = "#b16286"
local bright_purple = "#d3869b"
local neutral_aqua = "#689d6a"
local bright_aqua = "#8ec07c"
local light4 = "#a89984"
local light1 = "#ebdbb2"

vim.g.terminal_color_0 = dark0
vim.g.terminal_color_8 = gray0
vim.g.terminal_color_1 = neutral_red
vim.g.terminal_color_9 = bright_red
vim.g.terminal_color_2 = neutral_green
vim.g.terminal_color_10 = bright_green
vim.g.terminal_color_3 = neutral_yellow
vim.g.terminal_color_11 = bright_yellow
vim.g.terminal_color_4 = neutral_blue
vim.g.terminal_color_12 = bright_blue
vim.g.terminal_color_5 = neutral_purple
vim.g.terminal_color_13 = bright_purple
vim.g.terminal_color_6 = neutral_aqua
vim.g.terminal_color_14 = bright_aqua
vim.g.terminal_color_7 = light4
vim.g.terminal_color_15 = light1

-- vim.g.colors_name = "gruvbox"



vim.g.badwolf_darkgutter = 1
vim.g.badwolf_tabline = 1
