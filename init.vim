call plug#begin('~/.local/share/nvim/plugged')
Plug 'iCyMind/NeoSolarized'
Plug 'neomake/neomake'
"Plug 'w0rp/ale' 
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'lucidstack/hex.vim', { 'for': 'elixir' }
Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-skeletons', { 'for': 'erlang' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'elmcast/elm-vim', { 'for': 'elm' }
call plug#end()

set ts=4 sw=4 sts=4 expandtab
set number
set termguicolors

" NeoSolarized
" high | normal | low
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "normal"
" I make vertSplitBar a transparent background color. 
" If you like the origin solarized vertSplitBar style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1
" enable/disable NeoSolarized to display bold, underlined or italicized typefaces
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0
colorscheme NeoSolarized

" Set background according to current time of day.
let hr = str2nr(strftime('%H'))
if hr <= 6 || hr > 18
    set background=dark
else
    set background=light
endif

function! MyOnBattery()
    if filereadable('/sys/class/power_supply/ACAD/online')
        return readfile('/sys/class/power_supply/ACAD/online') == ['0']
    else
        return 0
    endif
endfunction

if MyOnBattery()
    call neomake#configure#automake('rw')
else
    call neomake#configure#automake('nrw', 500)
endif

let g:neomake_open_list = 2
"let g:neomake_list_height = 15

"l t g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0

let g:deoplete#enable_at_startup = 1
