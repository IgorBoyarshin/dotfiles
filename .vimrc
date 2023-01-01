" To load file:
" source ~/dotfiles/.vimrc

" Vimscript cheatsheet
" https://devhints.io/vimscript

" This is the configuration file for Vim(NeoVim)
set rtp+=~/.local/share/nvim/site/autoload/plug.vim
" =============================================================================
" ==================== Vim-Plug begin =========================================
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'scrooloose/nerdtree'
"     \| Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"     \| Plug 'ryanoasis/vim-devicons'


Plug 'lifepillar/vim-gruvbox8'
" Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tomtom/tcomment_vim' " comments with Ctrl+//
" Plug 'neomake/neomake' "async linting
" async code completion:
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'Yggdroot/indentLine'          " indentation with vertical markers
Plug 'Raimondi/delimitMate'         " auto-close brackets, quotes...
" Plug 'ctrlpvim/ctrlp.vim'           " fuzzy search
Plug 'easymotion/vim-easymotion'

" Snippets
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" " Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'


Plug 'tpope/vim-surround'

" Russian mode support
Plug 'vim-scripts/ruscmd'

" GLSL syntax highlight
Plug 'tikhomirov/vim-glsl'
Plug 'beyondmarc/opengl.vim'

" Git highlighting
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" LSP
" Plug 'autozimu/LanguageClient-neovim', {
" \ 'branch': 'next',
" \ 'do': 'bash install.sh',
"
" \ }

" Python
" Plug 'python-mode/python-mode', {'for': 'python'}
" Plug 'nvie/vim-flake8', {'for': 'python'}

" Latex
Plug 'lervag/vimtex', { 'for': 'tex' }


" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }

" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'


" Javascript & Web & Typescript
Plug 'posva/vim-vue'
" Plug 'gko/vim-coloresque', {'for': 'css'}
" Plug 'pangloss/vim-javascript', {'for': 'javascript'}
" Plug 'leshill/vim-json', {'for': 'javascript'}
" Uses config at ~/.tern-project
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': 'javascript'}
" Syntax highlighting
" Plug 'sheerun/vim-polyglot'
" Autocompletion
" Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" Plug 'carlitux/deoplete-ternjs', {'for': 'javascript'} " XXX: Install nodejs-tern!!
" List of deoplete Sources (languages engines):
" https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
" Typescript:
" Plug 'https://github.com/leafgarland/typescript-vim'


" Haskell
" Plug 'w0rp/ale' " async linting
" Plug 'neovimhaskell/haskell-vim'
" Plug 'dag/vim2hs'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'} " required for ghcmod-vim
" Plug 'eagletmt/ghcmod-vim'



" Code beautifier(Java, C++, ..): https://github.com/uncrustify/uncrustify
" -------------------- Fuzzy find (search) ------------------------------------
Plug 'junegunn/fzf', { 'dir': '~/Apps/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" -----------------------------------------------------------------------------
call plug#end()
" ==================== Vim-Plug end ===========================================
" =============================================================================


" =============================================================================
" ==================== General ================================================
" =============================================================================
filetype plugin indent on
" -----------------------------------------------------------------------------
if &history < 1000
    set history=1000
endif

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

" Does not work instanteniously, so better not use at all:
" Reloads the file automatically if it has been changed outside of Vim
" set autoread
" au CursorHold * checktime

set nrformats-=octal

set number " display line numbers
set encoding=UTF-8

" Display Tab and Eol chars
set list
set listchars=tab:▸\ ,eol:¬

set noswapfile
set sessionoptions-=options
set display+=lastline

set clipboard=unnamed,unnamedplus

" To fix the delay when exiting Insert mode
set timeoutlen=1000 ttimeoutlen=0

" Enable autocompletion for bottom bar
set wildmode=longest,list,full

set mouse=a
" -----------------------------------------------------------------------------
" Relative line numbers
" Switches back to absolute once the focus is lost or upon entering the Insert
if 0
    mode
    set number relativenumber
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END
endif
" =============================================================================
" ==================== Keys (shortcuts) =======================================
" =============================================================================
" vnoremap <C-/> gc
" nnoremap <C-/> gcc

nmap gP O<ESC>Vp
nmap gp o<ESC>Vp


nnoremap gO O<ESC>j
nnoremap g<C-O> o<ESC>k

vnoremap < <gv
vnoremap > >gv

" nnoremap '' :w<CR>

nnoremap <Space> i<Space><Esc>
nnoremap <CR> a<Space><Esc>

no <up> ddkP
no <down> ddp
no <right> xp
no <left> xhP

ino <down> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <left> <Nop>

noremap <C-j> J
noremap <C-k> kJ

noremap H ^
noremap L $
noremap J 5j
noremap K 5k

" Paste without overriding the buffer
" gv highlights whatever was previously selected
vnoremap p pgvy

" Disable F1 (help menu)
nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>

" Remove whitespaces from the end of the lines
nnoremap <C-s> :%s/\s*$//<CR><C-L>

" TODO
" Reload configuration .vimrc
" noremap <C-m> :source ~/.vimrc<Cr>

" Spell checking
" To correct using suggestions: z=
noremap <F5> :setlocal spell! spelllang=en<CR>
noremap <F6> :setlocal spell! spelllang=ru<CR>
noremap <F7> :setlocal spell! spelllang=uk<CR>

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
" -----------------------------------------------------------------------------
" Highlight lines that have changed
if 0
    if !exists(":DiffOrig")
        command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
              \ | wincmd p | diffthis
    endif
endif
" -----------------------------------------------------------------------------
" Fixed accidental unwanted unrecoverable deletion while in insert mode
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
" =============================================================================
" ==================== Style ==================================================
" =============================================================================
" (Use :hi to view current colors)
syntax enable
" -----------------------------------------------------------------------------
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
" set t_8f=^[[38;2;%lu;%lu;%lum " set foreground color
" set t_8b=^[[48;2;%lu;%lu;%lum " set background color
colorscheme gruvbox8_hard
" set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor
" -----------------------------------------------------------------------------
" For transparent background:
" let g:solarized_termtrans=1
" hi Normal guibg=NONE ctermbg=NONE
" -----------------------------------------------------------------------------
" Personal changes to colors

" GUI colors (truecolor)
highlight Normal guibg=#101418
highlight Comment guifg=#726354
highlight Todo gui=bold guifg=#ff1974 guibg=#101418

" TERM 256 colors
" highlight Comment ctermfg=244
" highlight Normal ctermbg=237
" highlight Todo cterm=bold ctermfg=203 ctermbg=233
" -----------------------------------------------------------------------------
" Highlight just as TODO
match Todo /\<NOTE\>/
" match Todo /\<nocheckin\>/
" -----------------------------------------------------------------------------
" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
    set t_Co=16
endif
" -----------------------------------------------------------------------------
" Make the 80th column visible
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" -----------------------------------------------------------------------------
" Otherwise the cursor stops blinking outside of vim
au VimLeave * set guicursor=a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
" =============================================================================
" ==================== Functions ==============================================
" =============================================================================
function! CppSwitchToOppositeFileType()
    let ext = expand('%:e')

    if ext == "h"
        execute "e " . expand('%:r') . ".cpp"
    elseif ext == "cpp"
        execute "e " . expand('%:r') . ".h"
    endif
endfunction

noremap <C-n> :call CppSwitchToOppositeFileType()<Cr>
" =============================================================================
" ==================== Typos/abbreviations ====================================
" =============================================================================
abbr cosnt const
abbr reutrn return
abbr retunr return
abbr incldue include
abbr unsinged unsigned
abbr whiel while
abbr inclued include
abbr stirng string
" =============================================================================
" ==================== Plugin: vim-gitgutter ==================================
" =============================================================================
let g:gitgutter_enabled = 0
" let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '##'
let g:gitgutter_sign_removed = '=='

" let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

set updatetime=100

noremap <C-h> :GitGutterToggle<Cr>
" =============================================================================
" ==================== Plugin: FZF ============================================
" =============================================================================
nnoremap <C-f> :Ag<Cr>
nnoremap <C-p> :Files<Cr>
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)
" -----------------------------------------------------------------------------
" Does not seem to have any effect:
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }
" =============================================================================
" ==================== Plugin: airline ========================================
" =============================================================================
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
" Otherwise entering Vim screws the tmuxline
let g:airline#extensions#tmuxline#enabled = 0
set noshowmode
" =============================================================================
" ==================== Plugin: tmuxline =======================================
" =============================================================================
let g:tmuxline_preset = 'tmux'
" =============================================================================
" ==================== Plugin: delimmate ======================================
" =============================================================================
let g:delimitMate_expand_cr = 1
" =============================================================================
" ==================== Plugin: indentline =====================================
" =============================================================================
" let g:indentLine_setColors = 0
" let g:indentLine_char = '┆'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 239
" let g:indentLine_fileTypeExclude = ['json']
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0
" =============================================================================
" ==================== Plugin: snipmate =======================================
" =============================================================================
" TODO move to the new (1) parser
let g:snipMate = { 'snippet_version' : 0 }
" =============================================================================
" ==================== Web ====================================================
" =============================================================================
" Don't conceal hidden characters:
autocmd FileType json setlocal conceallevel=0

autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
" let g:indentLine_fileTypeExclude = ['json']

" autocmd FileType javascript setlocal omnifunc=syntaxcomplete#Complete
" =============================================================================
" ==================== Latex ==================================================
" =============================================================================
" To compile: \ll
let g:tex_flavor  = 'latex'
let g:tex_conceal = ""
let g:md_conceal  = ""
" NOTE: if concealing does not work:
" set conceallevel = 0
" =============================================================================
" ==================== Universal quickfix window height =======================
" =============================================================================
augroup quickfix_autocmds
  autocmd!
  autocmd BufReadPost quickfix call AdjustWindowHeight(2, 5)
augroup END

function! AdjustWindowHeight(minheight, maxheight)
  execute max([a:minheight, min([line('$') + 1, a:maxheight])])
        \ . 'wincmd _'
endfunction
" =============================================================================
" ==================== Rust ===================================================
" =============================================================================
" Main:
" set hidden
" let g:racer_experimental_completer = 1
" set completeopt=menuone,noselect,noinsert
" set shortmess+=c
"
" autocmd FileType rust inoremap <c-p> <c-x><c-o>
" Other:
" " let g:LanguageClient_autoStart = 1
" nnoremap <leader>lspa :LanguageClientStart<CR>
" nnoremap <leader>lspo :LanguageClientStop<CR>
" nnoremap <leader>ls :LanguageClientStop<CR>
" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'] }
"
" autocmd FileType rust inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" autocmd FileType rust inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" autocmd BufEnter * call ncm2#enable_for_buffer()
" =============================================================================
" ==================== Haskell ================================================
" =============================================================================
" Plugin: haskell-vim
" let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
" let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
" let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
" let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
" let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
" let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
" let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
" let g:haskell_indent_if = 2               " Align 'then' two spaces after 'if'
" let g:haskell_indent_before_where = 4     " Indent 'where' block two spaces under previous body
" let g:haskell_indent_case_alternative = 1 " Allow a second case indent style (see haskell-vim README)
" let g:haskell_indent_let_no_in = 0        " Only next under 'let' if there's an equals sign
" -----------------------------------------------------------------------------
" Plugin: ghc-mod
" let $PATH = $PATH . ':' . expand('~/.cabal/bin')
" noremap <silent> tw :<C-U>GhcModTypeInsert<CR>
" noremap <silent> tq :<C-U>GhcModType<CR>
" =============================================================================
" ==================== Java ===================================================
" =============================================================================
autocmd FileType java inoremap sout<Tab> System.out.println();<Esc>F(a
" =============================================================================
" ==================== Plugin: NerdTree =======================================
" =============================================================================
if 0
    map <C-d> :NERDTreeToggle<CR>
    map <C-h> <C-w><C-w>
    let g:NERDTreeDirArrowExpandable = '―'
    let g:NERDTreeDirArrowCollapsible = '|'
    " Exit vim if only NerdTree is left open:
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif
" =============================================================================
" ==================== Plugin: ALE ============================================
" =============================================================================
" let g:ale_linters = {
" \    'haskell': ['stack-ghc-mod', 'hlint'],
" \    'javascript': ['eslint']
" \}
" " \    'haskell': ['ghc-mod', 'hlint']
"
" " Only run explicitly asked for linters
" let g:ale_linters_explicit = 1
"
" let g:ale_sign_error = '✖'
" let g:ale_sign_warning = 'W'
" highlight ALEWarningSign ctermfg=Magenta
" " highlight ALEWarning ctermfg=Magenta
" let g:airline#extensions#ale#enabled = 1
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" let g:ale_list_window_size = 6
"
" " Disable ALE for this pattern:
" let g:ale_pattern_options = {
" \   '*.rs': {'ale_enabled': 0},
" \   '*.h': {'ale_enabled': 0},
" \   '*.cpp': {'ale_enabled': 0},
" \   'notes.*': {'ale_enabled': 0},
" \}

" " Jump between errors(warnings)
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
" noremap <C-k> :cp<CR>
" noremap <C-j> :cn<CR>
" =============================================================================
" ==================== Plugin: Neomake ========================================
" =============================================================================
if 0
    " " Place language name here
    " let neomake_blacklist = ['tex', 'rust', 'js', 'haskell']
    " " Run Neomake on every read and write
    " autocmd! BufReadPost,BufWritePost * if index(neomake_blacklist, &ft) < 0 | Neomake
    "
    " " I don't use the following because it ignores buffer write with no changes
    " " call neomake#configure#automake('rw')
    " " Open the list automatically
    " let g:neomake_open_list = 2
    " let g:neomake_list_height = 6
    " " To see possible values for texthl, see :highlight
    " let g:neomake_warning_sign = {
    "     \ 'text': 'W',
    "     \ 'texthl': 'CursorLineNr',
    "     \ }
    " let g:neomake_error_sign = {
    "     \ 'text': '✖',
    "     \ 'texthl': 'WarningMsg',
    "     \ }
    " " let g:neomake_cpp_enable_markers=['gcc']
    " let g:neomake_cpp_gcc_args = ['-Wall', '-Wextra', '-Wno-unused-parameter', '-Wno-unused-variable', '-std=c++17']


    " Just an example
    " let g:neomake_make_maker = {
    "     \ 'exe': 'make',
    "     \ 'args': ['--build'],
    "     \ 'errorformat': '%f:%l:%c: %m',
    "     \ }

    " nnoremap [ :lnext<CR>
    " nnoremap ] :lprev<CR>


    " Compile (run linter)
    autocmd FileType cpp noremap <silent> '' :Neomake<CR>


    " Auto-close quickfix on exit
    autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
                \   q :cclose<cr>:lclose<cr>
    autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
                \   bd|
                \   q | endif
endif
" =============================================================================
" ==================== Plugin: Deoplete =======================================
" =============================================================================
if 0
    " " If already in pum (list) => as default, otherwise start deoplete completion
    " inoremap <silent><expr> <C-n> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
    " " XXX: To select a candidate: <C-y>
    " call g:deoplete#custom#option({
    " \ 'auto_complete': v:false,
    " \ })
    " let g:deoplete#enable_at_startup = 1
    " " When disabled, only the text before the given position is considered part of
    " " the word. When enabled (the default), the whole variable name that the cursor
    " " is on will be included. Default: 1
    " let g:deoplete#sources#ternjs#expand_word_forward = 0
endif
" =============================================================================
" ==================== Cool ASCII chars =======================================
" =============================================================================
" ✗ ✖ ⚠
" =============================================================================


finish


" =============================================================================
" ==================== Tips and Tricks ========================================
" =============================================================================
nnoremap <leader>r :silent term python draw.py<CR>
"------------------------------------------------------------------------------
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}
"------------------------------------------------------------------------------
" TODO
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>

function! HLNext (blinktime)
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'), col-1),@/))
    let target_pat = '\c\%#'.@/
    let blinks = 3
    for n in range(1,blinks)
        let red = matchadd('WhiteOnRed', target_pat, 101)
        redraw
        exec 'sleep ' . float2nr(a:blinktime / 2*(blinks) * 1000) . 'm'
        call matchdelete(red)
        redraw
        exec 'sleep ' . float2nr(a:blinktime / 2*(blinks) * 1000) . 'm'
    endfor
endfunction
" =============================================================================
