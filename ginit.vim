if exists('g:GuiLoaded')

    GuiTabline 0

    GuiPopupmenu 0
    
    GuiFont Hack Nerd Font Mono:h11
    " GuiFont CaskaydiaCove NF:h11
    " GuiFont DejaVuSansMono Nerd Font Mono:h11
    " GuiFont Ubuntu Mono derivative Powerlin:h13

    " set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
    
    " Enable blinking together with different cursor shapes for insert/command mode, and cursor highlighting:
    set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
endif
