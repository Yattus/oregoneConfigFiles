"=============================================================================
" vimrc --- Entry file for vim
" Copyright (c) 2016-2017 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

" Note: Skip initialization for vim-tiny or vim-small.
if 1
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'
endif
" vim:set et sw=2
"
let mapleader=";"

nmap <leader>s :w<CR>

nnoremap qq :q<CR>
nnoremap <leader>; :q!<CR>

nmap <C-x> <C-x>

" Delete buffer
nmap qb :bd<CR>

" Let g:spacevim_windows_leader = ';'
let g:spacevim_enable_cursorcolumn = 1
let g:spacevim_enable_statusline_mode = 1
let g:spacevim_expand_tab = 4 
let g:spacevim_enable_ycm = 1
let g:spacevim_default_indent = 4
let g:spacevim_vim_help_language = 'fr'
" "Add custom plugins.
" let g:spacevim_custom_plugins = [
"               \ ['plasticboy/vim-markdown', 'on_ft' : 'markdown'],
"               \ ['wsdjeg/GitHub.vim'],
"               \ ]

" *************CONFIGUARTION DE DEFAULT VIM***********
" function! Replace(confirm, wholeword, replace)
"     wa
"     let flag = ''
"     if a:confirm
"         let flag .= 'gec'
"     else
"         let flag .= 'ge'
"     endif
"     let search = ''
"     if a:wholeword
"         let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
"     else
"         let search .= expand('<cword>')
"     endif
"     let replace = escape(a:replace, '/\&~')
"     execute '%s/' . search . '/' . replace . '/' . flag . '| update'
" endfunction
" " 不确认、非整词
" nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" " 不确认、整词
" nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" " 确认、非整词
" nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" " 确认、整词
" nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smartcase
set ignorecase    " case insensitive searching (unless specified)
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set colorcolumn=80
highlight ColorColumn ctermbg=234

if has('autocmd')
    augroup coloroverride
        autocmd!
        autocmd ColorScheme * highlight LineNr ctermbg=234  ctermfg=238 guifg=238 " Override LineNr rgb=0,0,0 
        autocmd ColorScheme * highlight CursorLineNr  ctermbg=237 ctermfg=green guifg=green cterm=BOLD " Override CursorLineNr
    augroup END
endif
silent! colorscheme eldar " Custom color scheme

" Color colonne number
" highlight LineNr ctermbg=234  ctermfg=238 "rgb=0,0,0

" set cursorline                              " shows line under the cursor's line
highlight cursorline ctermbg=237 cterm=BOLD

set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8                             " utf-8 by default"])

set visualbell    " stop that ANNOYING beeping
set showcmd
set autoread
set backspace=2
set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set history=50

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...
set shell=sh								" for fixed git nerdtree issue

" Auto resize Vim splits to active split
set winwidth=104
set winheight=12
set winminwidth=12
set winminheight=5
set winheight=999

" Créer une atmosphère ciblée

" Le curseur ne peut pas clignoter
set gcr=a:block-blinkon0

" Interdire l'affichage de la barre de défilement
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Interdire l'affichage des menus et des barres d'outils

set guioptions-=m
set guioptions-=T

nmap <leader>rh :res -10<CR>
nmap <leader>hr :res +10<CR>
nmap <leader>rv  :vertical res -10<CR>
nmap <leader>vr :vertical res +10<CR>

" split vertical
nmap <leader>sv :vsplit<CR>
nmap <leader>sh :split<CR>
" nnoremap M K
" nnoremap L J

" jump up and down
nmap <leader>K <pageup>
nmap <leader>J <pagedown>

"HTML Editing
set matchpairs+=<:>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>
"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" Définir des raccourcis pour enregistrer tout le contenu de la fenêtre et quitter vim
nmap <leader>x :wa<CR>:q<CR>

" Trigger autoread when changing buffers or coming back to vim in terminal.
au FocusGained,BufEnter * :silent! !

"******** BUFFER RACCOURCI ***********
" buffer next
nmap <C-o> :bn<CR>
imap <C-o> <ESC>:bn<CR>

" buffer last
nmap <C-u> :bp<CR>
imap <C-u> <ESC>:bp<CR>


" Appelez l'arbre gundo
nnoremap <leader>ud :GundoToggle<CR>
" Définir des raccourcis vers le début et la fin de la ligne
nmap <expr> Z 0
vnoremap <expr> Z 0

nmap LE $
imap  $$ <ESC>$i

" Additional mappings for Esc (useful for MacBook with touch bar)
imap jj <Esc>l

nnoremap <silent> <leader>e :noh<cr> " Stop highlight after searching

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" In insert mode
inoremap <C-j> <esc><C-w>j
inoremap <C-k> <esc><C-w>k
inoremap <C-h> <esc><C-w>h
inoremap <C-l> <esc><C-w>l

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=23

" autocmd BufEnter *.py :call tagbar#autoopen(0)
" autocmd BufWinLeave *.py :TagbarClose       
" C++
" autocmd BufEnter *.cpp :call tagbar#autoopen(0)
" autocmd BufWinLeave *.cpp :TagbarClose       

" autocmd BufEnter *.hpp :call tagbar#autoopen(0)
" autocmd BufWinLeave *.hpp :TagbarClose

" Run a java programme from vim
map <leader>rj :!clear && java %< <CR>

"
let g:spacevim_layer_lang_java_formatter = '.javaSpaceVimStyle/google-java-format-1.6-all-deps.jar'

nnoremap <Leader>tg :TagbarToggle<CR>

let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0',
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }



"=====================================================
"" Python settings
"=====================================================

" python executables for different plugins
let g:pymode_python='python3'
let g:syntastic_python_python_exec='python'

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=1
let g:pymode_doc_bind='<leader>d'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'


" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" syntastic
nmap <silent> <leader>er :SyntasticCheck <CR> 
" <CR> :bp <BAR> bd #<CR>

" For close syntastic
nmap qs <C-w>j :bdelete<CR>

" let g:syntastic_debug=3
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
" custom icons (enable them if you use a patched font, and enable the previous 
" setting)

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol ='⚠'  " '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python', 'pep8']


" DragVisuals ------------------------------

" mappings to move blocks in 4 directions
vmap <expr> H DVB_Drag('left')
vmap <expr> L DVB_Drag('right')
vmap <expr> J DVB_Drag('down')
vmap <expr> K DVB_Drag('up')
" mapping to duplicate block
vmap <expr> D DVB_Duplicate()

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-j>'
let g:multi_cursor_quit_key            = '<Esc>'


" NERDTREE
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=20
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeWinPos="right"
" map " :NERDTreeToggle<CR>

" for NerdTree git
" let g:NERDTreeShowIgnoredStatus = 1 (a heavy feature may cost much moretime))
" ```vimscript
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
 " ```


" When reading a buffer (after 1s), and when writing (no delay).
" call neomake#configure#automake('rw', 1000)
" set statusline=...%{battery#component()}...
" let g:battery#update_statusline = 1

" undotree config
nnoremap <F5> :UndotreeToggle<cr>

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" Setting for emmet
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-e>'

" custom to move buffers position
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>nw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>
