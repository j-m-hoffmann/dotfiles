set number
set ts=2 sw=2 sts=2 expandtab
"set clipboard=unnamedplus
set colorcolumn=80

call plug#begin('~/.vim/plugged')

"Plug 'iCyMind/NeoSolarized'
"Plug 'jiangmiao/auto-pairs'
"Plug 'mattn/emmet-vim'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

"Plug 'w0rp/ale'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'

"Plug 'reasonml-editor/vim-reason-plus'
"Plug 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
    "\ }
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'kassio/neoterm'

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
"let g:user_emmet_install_global = 0
"autocmd FileType html,css,javascript,reason,jsx,babel EmmetInstall

" Netrw linenumbers
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" OCaml
"autocmd FileType ocaml set ts=2|set sw=2
"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"
"execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"

"if executable('ocamlmerlin') && has('python')
  "let s:ocamlmerlin = substitute(system('opam config var share'), '\n$', '', '''') . "/merlin"
  "execute "set rtp+=".s:ocamlmerlin."/vim"
  "execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
"endif

"autocmd FileType ocaml execute "set rtp+=" . substitute(system('opam config var share'), '\n$', '', '''') . "/ocp-indent/vim/indent/ocaml.vim"

" Reason

" Required for operations modifying multiple buffers like rename.
"set hidden

"au VimEnter,BufRead,BufNewFile *.re set filetype=reason
"au VimEnter,BufRead,BufNewFile *.rei set filetype=reason

    "\ 'reason': ['/home/user/.local/bin/reason-language-server.exe'],
    "\ 'reason': ['reason-language-server.exe', '--stdio'],
    "\ 'reason': ['/home/user/.local/bin/reason-language-server.exe', '--stdio'],
    "\ 'ocaml': ['ocaml-language-server', '--stdio'],
"let g:LanguageClient_serverCommands = {
    "\ 'ocaml': ['ocaml-language-server'],
    "\ 'javascript': ['javascript-typescript-stdio'],
    "\ 'reason': ['reason-language-server.exe'],
    "\ }

"let g:LanguageClient_autoStart = 1
"let g:ale_reason_ols_executable = '/home/user/.local/bin/reason-language-server.exe'

"let g:deoplete#enable_at_startup = 1

"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
"nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gr :call LanguageClient#textDocument_rename()<CR>
"nnoremap <silent> gx :call LanguageClient#explainErrorAtPoint()<CR>

" Slime
"let g:slime_target = "neovim"
"set splitright
"set splitbelow

" Terminal
"tnoremap <Leader><ESC> <C-\><C-n>
