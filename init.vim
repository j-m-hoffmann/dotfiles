set clipboard=unnamedplus
set colorcolumn=80
set cursorline
set number

" Set 7 lines to the cursor - when moving vertically using j/k
set so=14

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set tabstop=4 shiftwidth=4 sts=4 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
autocmd FileType css setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
autocmd FileType reason setlocal tabstop=2 shiftwidth=2 sts=2 expandtab

call plug#begin('~/.local/share/nvim/plugged')

Plug 'iCyMind/NeoSolarized'

Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'

"Plug 'w0rp/ale'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'reasonml-editor/vim-reason-plus'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'kassio/neoterm'

"Plug 'vimlab/split-term.vim'
"Plug 'jpalardy/vim-slime'
"Plug 'roman/golden-ratio'

call plug#end()

" ALE
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_completion_enabled = 1

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript,reason,jsx,babel EmmetInstall

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

" Netrw linenumbers
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" OCaml
"autocmd FileType ocaml set ts=2|set sw=2
" let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"
" execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"

" if executable('ocamlmerlin') && has('python')
"   let s:ocamlmerlin = substitute(system('opam config var share'), '\n$', '', '''') . "/merlin"
"   execute "set rtp+=".s:ocamlmerlin."/vim"
"   execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
" endif

" autocmd FileType ocaml execute "set rtp+=" . substitute(system('opam config var share'), '\n$', '', '''') . "/ocp-indent/vim/indent/ocaml.vim"

" Reason

" Required for operations modifying multiple buffers like rename.
set hidden

au VimEnter,BufRead,BufNewFile *.re set filetype=reason
au VimEnter,BufRead,BufNewFile *.rei set filetype=reason

    "\ 'reason': ['/home/user/.local/bin/reason-language-server.exe'],
    "\ 'reason': ['reason-language-server.exe', '--stdio'],
    "\ 'reason': ['/home/user/.local/bin/reason-language-server.exe', '--stdio'],
    "\ 'ocaml': ['ocaml-language-server', '--stdio'],
let g:LanguageClient_serverCommands = {
    \ 'ocaml': ['ocaml-language-server'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'reason': ['reason-language-server.exe'],
    \ }

let g:LanguageClient_autoStart = 1
"let g:ale_reason_ols_executable = '/home/user/.local/bin/reason-language-server.exe'

let g:deoplete#enable_at_startup = 1

nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> gx :call LanguageClient#explainErrorAtPoint()<CR>

" Search
" Map Ctrl-/ to clear highlighting.
" NOTE: It's very strange that <C-_> is vim's way of saying this.
nnoremap <silent> <C-_> :nohl<CR>

" vim-surround 
nmap s  <Plug>Ysurround
nmap S  <Plug>YSurround

" Slime
"let g:slime_target = "neovim"
"set splitright
"set splitbelow

" Terminal
tnoremap <Leader><ESC> <C-\><C-n>
