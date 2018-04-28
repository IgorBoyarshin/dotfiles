" This is the configuration file for Vim(NeoVim)


set rtp+=~/.local/share/nvim/site/autoload/plug.vim

" ----------------------------------------------------------
" --------------------- Vim-Plug begin ---------------------


call plug#begin('~/.local/share/nvim/plugged')

" List all plugins here:

" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tomtom/tcomment_vim' " comments with Ctrl+//
" Plug 'neomake/neomake' "async linting
" async code completion:
" TODO: reenable
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'for': 'java' }
" Plug 'rustushki/JavaImp.vim'
Plug 'Yggdroot/indentLine'          " indentation with vertical markers
Plug 'Raimondi/delimitMate'         " auto-close brackets, quotes...
" Plug 'ctrlpvim/ctrlp.vim'           " fuzzy search
" TODO: reenable
" Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'easymotion/vim-easymotion'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py', 'for': 'cpp' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py', 'for': '' }
Plug 'garbas/vim-snipmate' " This and the following two: for snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

Plug 'tpope/vim-surround'

" Russian mode support
Plug 'vim-scripts/ruscmd'

" Python
Plug 'python-mode/python-mode', {'for': 'python'}
Plug 'nvie/vim-flake8', {'for': 'python'}


" Haskell
Plug 'w0rp/ale' " async linting
Plug 'Shougo/vimproc.vim', {'do' : 'make'} " required for ghcmod-vim
Plug 'neovimhaskell/haskell-vim'
" Plug 'dag/vim2hs'
Plug 'eagletmt/ghcmod-vim'
"
"
" Code beautifier(Java, C++, ..): https://github.com/uncrustify/uncrustify

call plug#end()


" --------------------- Vim-Plug end -----------------------
" ----------------------------------------------------------
" --------------------- Plugins settings begin -------------


" Haskell plugins

" For ghc-mod:
let $PATH = $PATH . ':' . expand('~/.cabal/bin')

" ALE
let g:ale_linters = {
\    'haskell': ['stack-ghc-mod', 'hlint']
\}
" \    'haskell': ['ghc-mod', 'hlint']

let g:ale_sign_error = '×'
let g:ale_sign_warning = 'W'
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_list_window_size = 6

" Disable ALE for this pattern:
let g:ale_pattern_options = {
\   'notes.*': {'ale_enabled': 0},
\}

" Jump between errors(warnings)
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
map <C-k> :cp<CR>
map <C-j> :cn<CR>

" function! LinterStatus() abort
"     let l:counts = ale#statusline#Count(bufnr(''))
"
"     let l:all_errors = l:counts.error + l:counts.style_error
"     let l:all_non_errors = l:counts.total - l:all_errors
"
"     return l:counts.total == 0 ? 'OK' : printf(
"     \   '%dW %dE',
"     \   all_non_errors,
"     \   all_errors
"     \)
" endfunction
"
" set statusline=%{LinterStatus()}

" haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_if = 2               " Align 'then' two spaces after 'if'
let g:haskell_indent_before_where = 4     " Indent 'where' block two spaces under previous body
let g:haskell_indent_case_alternative = 1 " Allow a second case indent style (see haskell-vim README)
let g:haskell_indent_let_no_in = 0        " Only next under 'let' if there's an equals sign

" ghc-mod
map <silent> tw :<C-U>GhcModTypeInsert<CR>
map <silent> tq :<C-U>GhcModType<CR>



" Run Neomake on every read and write
" autocmd! BufReadPost,BufWritePost * Neomake
" TODO: on github they say to do this instead:
" call neomake#configure#automake('rw')
" Open the list automatically
" let g:neomake_open_list = 2
" let g:neomake_list_height = 4
" let g:neomake_warning_sign = {
"     \ 'text': '⚠',
"     \ 'texthl': 'WarningMsg',
"     \ }
" let g:neomake_error_sign = {
"     \ 'text': '✖',
"     \ 'texthl': 'ErrorMsg',
"     \ }

" Use deoplete
let g:deoplete#enable_at_startup = 1

" IndentLine settings
" let g:indentLine_setColors = 0
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239

" delimitMate (auto closing of quotes, brackets..)
let g:delimitMate_expand_cr = 1

" CtrlP (fuzzy search)
" let g:ctrlp_map = '<c-p>'
" set wildignore+=*/build/**
" let g:ctrlp_use_caching=0

" Python
let g:pymode_python = 'python3'
let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" autocmd FileType python let g:neomake_open_list = 0
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1
let g:pymode_doc = 0
set nofoldenable
set completeopt=menu
let g:pymode_lint = 0

" javacomplete2
let g:JavaComplete_EnableDefaultMappings = 0
autocmd FileType java setlocal omnifunc=javacomplete#Complete
" TODO: make java-only
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)


" For airline
let g:airline_theme='dark'
"let g:airline_theme='solarized'
"let g_airline_solarized_bd='dark'
let g:airline_powerline_fonts=1
" Otherwise entering Vim screws the tmuxline
let g:airline#extensions#tmuxline#enabled = 0
set noshowmode


" For the Solarized colorscheme
syntax enable
set background=dark
let g:solarized_termcolors=256
"let g:solarized_termtrans=1 " for transparent background
colorscheme solarized

let g:tmuxline_preset = 'tmux'


" Comments
vnoremap <C-/> gc
nnoremap <C-/> gcc


" syntax on
filetype plugin indent on


" For Java
autocmd FileType java imap sout<Tab> System.out.println();<Esc>F(a
" autocmd FileType java imap sout<Tab> System.out.println("");<Esc>F"i


" Compilation for R Markdown
autocmd FileType rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>


"
" map <C-\> :NERDTreeToggle<CR>


" --------------------- Plugins settings end ---------------
" ----------------------------------------------------------
" --------------------- Vim(Neovim) settings begin ---------


" Highlights the current search match.
" Navigate through them while still in search mode with Ctrl-G and Ctrl-T.
set incsearch

" Make the search case insensitive, but switch to sensitive when there is a
" capital letter in the search pattern.
set ignorecase
set smartcase

" TAB size is 4 spaces. Always replace TAB with spaces.
set tabstop=4
set softtabstop=0   " 0 == when backspacing, delete by spaces, not by tabs
set shiftwidth=4
set expandtab

set scrolloff=5     " keep 5 lines above and below the cursor
set smarttab
set autoindent
set backspace=indent,eol,start
set complete-=i     " don't search in all included files

set laststatus=2    " always display the status line
set ruler
set wildmenu

" TODO: works??
" Reloads the file automatically if it has been changed outside of Vim
set autoread
au CursorHold * checktime

set nrformats-=octal
inoremap <C-U> <C-G>u<C-U>

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

if &history < 1000
  set history=1000
endif

no <up> ddkP
no <down> ddp
no <right> xp
no <left> xhP

ino <down> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <left> <Nop>


" Faster and more convenient navigation
noremap H ^
noremap L $
noremap J 5j
noremap K 5k

" Visual block shift
vmap < <gv
vmap > >gv

" Put line before or after the current line without entering the insert mode
nmap gO O<ESC>j
nmap g<C-O> o<ESC>k


" Spell checking
map <F6> :setlocal spell! spelllang=en_us<CR>

set number      " display line numbers
set encoding=utf-8

" Display Tab and Eol chars
set list
set listchars=tab:▸\ ,eol:¬

set noswapfile
set sessionoptions-=options
set display+=lastline

" Make the 80th column visible
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" TODO: works??
" set clipboard=unnamed ",unnamedplus
" set clipboard^=unnamed,unnamedplus
set clipboard=unnamedplus

" To fix the delay when exiting Insert mode
set timeoutlen=1000 ttimeoutlen=0

" Abbreviations
abbr cosnt const
abbr reutrn return
abbr retunr return
abbr incldue include
abbr unsinged unsigned
abbr whiel while
abbr inclued include
abbr stirng string


function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction

function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p


" Relative line numbers.
" Switches back to absolute once the focus is lost or upon entering the Insert
" mode
" set number relativenumber
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END


" --------------------- Vim(Neovim) settings end -----------
" ----------------------------------------------------------


finish


" ----------------------------------------------------------
" --------------------- Unknown setings start --------------


if exists('g:loaded_sensible') || &compatible
  finish
else
  let g:loaded_sensible = 'yes'
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif


if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))
  set shell=/bin/bash
endif


if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif


" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif


" --------------------- Unknown setings end ----------------
" ----------------------------------------------------------
