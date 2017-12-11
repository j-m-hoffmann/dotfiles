set ts=2 sw=2 sts=2 expandtab
set number
set clipboard=unnamed
set colorcolumn=80

call plug#begin('~/.local/share/nvim/plugged')
Plug 'iCyMind/NeoSolarized'
Plug 'w0rp/ale' 
Plug 'tpope/vim-surround'
Plug 'roman/golden-ratio'
Plug 'jpalardy/vim-slime'
Plug 'vimlab/split-term.vim'

"ocaml
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'reasonml-editor/vim-reason-plus' 

"lisp plugins
"Plug 'wlangstroth/vim-racket', { 'for': 'scheme' }
"Plug 'epeli/slimux', { 'for': 'scheme' }
"Plug 'kovisoft/paredit', { 'for': 'scheme' }
"Plug 'kovisoft/slimv'

"elixir plugins
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
"Plug 'lucidstack/hex.vim', { 'for': 'elixir' }

"erlang plugins
Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-skeletons', { 'for': 'erlang' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim'
Plug 'Shougo/echodoc.vim'

"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'elmcast/elm-vim', { 'for': 'elm' }
call plug#end()

" NeoSolarized
set termguicolors
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

"ALE
if MyOnBattery()
    "call neomake#configure#automake('rw')
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_enter = 0
"else
    "call neomake#configure#automake('nrw', 500)
endif

let g:deoplete#enable_at_startup = 1
let g:slime_target = "neovim"
set splitright
set splitbelow

"ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

let g:LanguageClient_serverCommands = { 'reason': ['ocaml-language-server', '--stdio'], 'ocaml': ['ocaml-language-server', '--stdio'], }

let g:LanguageClient_autoStart = 1
let g:ale_ocaml_ols_use_global = 1 

nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>  
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>  
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>  

"if has("autocmd")
"    au BufReadPost *.rkt,rktl set filetype=scheme
"endif 
"autocmd bufread,bufnewfile *.lisp,*.scm,*.rkt setlocal equalprg=scmindent.lua 
"autocmd filetype lisp,scheme,racket setlocal equalprg=scmindent.lua
"let g:split_term_vertical = 1
"let g:neomake_open_list = 2
"let g:neomake_list_height = 15
"set cmdheight=2
"let g:echodoc#enable_at_startup = 1
