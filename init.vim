set clipboard=unnamedplus
set colorcolumn=80
set cursorline
set lazyredraw "Don't redraw while executing macros, good for performance
set number
set so=14 "Set 14 lines to the cursor when moving vertically

" Turn backup off, since most stuff is in SVN, git et.c anyway...
" set nobackup
" set nowb
" set noswapfile

let mapleader = " "

" reload vimrc
map <leader>rv :source ~/.config/nvim/init.vim<cr>

" fast saving
nmap <leader>fs :w!<cr>

" disable highlight when <leader>ho is pressed
map <silent> <leader>ho :noh<cr>

map <leader>bd :q<cr>
map <leader>bw :ls<cr>

map <leader>te :tabedit 
map <leader>td :tabclose<cr>
map <leader>tt :tab Tnew<cr>

map <leader>wc <C-W>c 

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

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
"let g:ale_reason_ols_executable = '/home/user/.local/bin/reason-language-server.exe'

" Deoplete
let g:deoplete#enable_at_startup = 1

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
au VimEnter,BufRead,BufNewFile *.re set filetype=reason
au VimEnter,BufRead,BufNewFile *.rei set filetype=reason

" LanguageClient
set hidden " required for operations modifying multiple buffers like rename.
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'ocaml': ['ocaml-language-server --stdio'],
    \ 'reason': ['reason-language-server.exe'],
    \ }
let g:LanguageClient_autoStart = 1
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> gx :call LanguageClient#explainErrorAtPoint()<CR>

" vim-surround 
nmap s <Plug>Ysurround
nmap S <Plug>YSurround

" Slime
"let g:slime_target = "neovim"
"set splitright
"set splitbelow

" Terminal
tnoremap <Leader><ESC> <C-\><C-n>

" Visual mode 
" pressing * or # searches for the current selection idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Whitespace
set tabstop=4 shiftwidth=4 sts=4 expandtab
autocmd FileType css setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
autocmd FileType ocaml setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
autocmd FileType reason setlocal tabstop=2 shiftwidth=2 sts=2 expandtab
