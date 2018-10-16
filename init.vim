set autowrite
set number
set ts=2 sw=2 sts=2 expandtab
set clipboard=unnamedplus
set colorcolumn=80
set wildmenu

call plug#begin('~/.local/share/nvim/plugged')

Plug 'reasonml-editor/vim-reason-plus'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpared'

Plug 'w0rp/ale'

Plug 'roman/golden-ratio'
Plug 'vimlab/split-term.vim'
Plug 'iCyMind/NeoSolarized'

call plug#end()

"ReasonML
let g:ale_reasonml_refmt_executable = '/home/user/.yarn/bin/refmt'
let g:ale_reason_ols_executable = '/home/user/.yarn/bin/ocamlmerlin-server'

" Golang
"map <C-n> :cnext<CR>
"map <C-m> :cprevious<CR>
"nnoremap <leader>a :cclose<CR><Paste>
"
"" run :GoBuild or :GoTestCompile based on the go file
"function! s:build_go_files()
  "let l:file = expand('%')
  "if l:file =~# '^\f\+_test\.go$'
    "call go#test#Test(0, 1)
  "elseif l:file =~# '^\f\+\.go$'
    "call go#cmd#Build(0)
  "endif
"endfunction
"
"autocmd FileType go nmap <leader>r  <Plug>(go-run)
"autocmd FileType go nmap <leader>t  <Plug>(go-test)
"autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
"autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

function! MyOnBattery()
    if filereadable('/sys/class/power_supply/AC/online')
        return readfile('/sys/class/power_supply/AC/online') == ['0']
    else
        return 0
    endif
endfunction

"ALE
if MyOnBattery()
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0
  let g:ale_lint_on_save = 1
  "call neomake#configure#automake('rw')
  "else
  "call neomake#configure#automake('nrw', 500)
endif

let g:ale_fixers = { 'sh': ['shellcheck'], } 
let g:ale_sh_shfmt_options = '-i 2 -ci'

"split-term
set splitbelow

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

packloadall
silent! helptags ALL
