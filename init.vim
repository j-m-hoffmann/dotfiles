if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'iCyMind/NeoSolarized'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

call plug#end()

set autoread
set clipboard=unnamedplus
set colorcolumn=80
set cursorline
set lazyredraw "Don't redraw while executing macros, good for performance
set number
set so=0 "Set 7 lines to the cursor when moving vertically

" Height of the command bar
set cmdheight=2

" Turn backup off, since most stuff is in SVN, git et.c anyway...
" set nobackup
" set nowb
set noswapfile

map <leader>ev :tabedit $MYVIMRC<cr>
map <leader>rv :source $MYVIMRC<cr>

" disable highlighting
map <silent> <leader>ho :noh<cr>

map <leader>gc :Gcommit %<cr>
map <leader>gd :Gdiff<cr>
map <leader>gs :Gstatus<cr>

map <leader>td :tabclose<cr>
map <leader>te :tabedit 
" map <leader>tn :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tt :tab Tnew<cr>

map <leader>wd <C-W>c 
map <leader>wo <C-W>o 
map <leader>ww <C-W>w 

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Gitgutter
set updatetime=100

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
if hr <= 7 || hr > 18
    set background=dark
else
    set background=light
endif

" Netrw linenumbers
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" vim-surround 
nmap s <Plug>Ysurround
nmap S <Plug>YSurround

" Terminal
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif
highlight TermCursor ctermfg=red guifg=red
tnoremap <Leader><ESC> <C-\><C-n>
tnoremap <Leader>tp <C-\><C-n>:tabprevious<cr>
tnoremap <Leader>tn <C-\><C-n>:tabnext<cr>
tnoremap <Leader>bd <C-\><C-n>:q!<cr>

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
