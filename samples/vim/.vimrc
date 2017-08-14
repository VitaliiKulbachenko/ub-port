""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" k33nice <k33nice@gmail.com>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helpers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:is_windows = has('win16') || has('win32') || has('win64')
let s:is_cygwin = has('win32unix')
let s:is_mac = !s:is_windows && !s:is_cygwin
      \ && (has('mac') || has('macunix') || has('gui_macvim')
      \ || (!executable('xdg-open') && system('uname') =~? '^darwin'))


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------------------ Startify -------------------------------------
let g:startify_custom_header=[
\ '  _  __  ____    ____            _____                ',
\ ' | |/ / |___ \  |___ \          |_   _|               ',
\ ' | ` /    __) |   __) |  _ __     | |     ___    ___  ',
\ ' |  <    |__ <   |__ <  | `_ \    | |    / __|  / _ \ ',
\ ' | . \   ___) |  ___) | | | | |  _| |_  | (__  |  __/ ',
\ ' |_|\_\ |____/  |____/  |_| |_| |_____|  \___|  \___| ',
\ ]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set guioptions=M
set nocompatible
set shell=bash
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set history=700
" set cursorline
set ttyfast

set path+=**

" Enable filetype plugins
filetype plugin on
filetype indent on

" listchars
" set list listchars=tab:»·,trail:·,nbsp:·
set list listchars=tab:\|\ ,trail:·,nbsp:·

let mapleader = ","
let g:mapleader = ","

" trim whitespaces
" autocmd BufWritePre * keepjumps %s/\s\+$//e
autocmd BufWritePre * silent call TrimWhitespace()

map <leader>m <Esc>:set expandtab tabstop=2 shiftwidth=2<CR>

" Think "little tabs" and "big tabs":
map <leader>t <Esc>:set expandtab tabstop=4 shiftwidth=4<CR>
nnoremap <leader><space> :noh<cr>

" BREAKS ULTISNIPS!
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Select last pasted
nnoremap gp `[v`]

command! -bang Tabcloseright call TabCloseRight('<bang>')
command! -bang Tabcloseleft call TabCloseLeft('<bang>')
map <leader><Left> :Tabcloseleft<CR>
map <leader><Right> :Tabcloseright<CR>

nnoremap <Leader>w :w<CR>

command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" move vertically by visual line  -- won't skip over wrapped lines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap j gj
nnoremap k gk

" Move in Insert Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

" <Leader>% - Search and Replace Highlighted Text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <Leader>% "hy:%s/<C-r>h//gc<left><left><left>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>mm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if s:is_mac
  nmap <Esc>k <M-k>
  nmap <Esc>j <M-j>
  vmap <Esc>j <M-j>
  vmap <Esc>k <M-k>
endif

noremap <C-c> <ESC>
vnoremap <C-c> <ESC>
inoremap <C-c> <ESC>

" visual macro
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
nnoremap <leader>jq :call ToJSON()<CR>

map <space> %

map <leader>f :set foldmethod=indent<cr>zM<cr>
map <leader>F :set nofoldenable<cr>zR<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

set nu
" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" For tmux usage
set mouse=nicrv

" disable underline text in html
let html_no_rendering=1

" file > 50MB disble slow actions
autocmd BufEnter * if getfsize(@%) > 52428800 | call LargeFile() | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" more natural split behavior
set splitbelow
set splitright

"" Auto PASTE when paste in insert mode
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" sunaku's vim/tmux 256color hack. more info here:
" https://github.com/ninrod/tricks/blob/master/shell/tmux.md#sunakus-hack-for-fixing-256-colors-colorschemes-for-vim-inside-tmux
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

let g:lasttab = 1
nmap <silent> gl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" formatopts
autocmd FileType * setlocal formatoptions-=o

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable asynta  highlighting
syntax enable

" ALE, neomake error sign
augroup error_signs
    au!
    au ColorScheme * hi NeomakeErrorSign ctermfg=125
    au ColorScheme * hi ALEErrorSign ctermbg=none ctermfg=125
augroup END

set t_Co=256
set background=dark
colorscheme PaperColor
" colorscheme neodark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(121,999),",")
" set colorcolumn=121

" Fix syntax Highlight
nmap <leader>r :syntax sync fromstart \| redraw! <cr>
autocmd BufEnter * if getfsize(@%) < 1048576 | :syntax sync fromstart | endif

" ------------------ Autofiletypes -------------------------------------
au BufRead,BufNewFile /etc/nginx/*,*nginx*/*.conf if &ft == '' | setfiletype nginx | endif
au BufRead,BufNewFile *php*.* if &ft == '' | setfiletype php | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent execute '!mkdir -p ~/.vim/{swap,backup,undo}'
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

nmap ,path :let @+ = expand('%') <CR>


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection

let s:save_cpo = &cpo | set cpo&vim
if !exists('g:VeryLiteral')
  let g:VeryLiteral = 0
endif

vnoremap <silent> * :<C-U>call <SID>VSetSearch('/')<CR>/<C-R>/<CR>
vnoremap <silent> # :<C-U>call <SID>VSetSearch('?')<CR>?<C-R>/<CR>
vmap <kMultiply> *
nmap <silent> <Plug>VLToggle :let g:VeryLiteral = !g:VeryLiteral
  \\| echo "VeryLiteral " . (g:VeryLiteral ? "On" : "Off")<CR>
if !hasmapto("<Plug>VLToggle")
  nmap <unique> <Leader>vl <Plug>VLToggle
endif
let &cpo = s:save_cpo | unlet s:save_cpo


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Macros
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let @c='^v$hyA=="'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:VSetSearch(cmd)
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  normal! gvy
  if @@ =~? '^[0-9a-z,_]*$' || @@ =~? '^[0-9a-z ,_]*$' && g:VeryLiteral
    let @/ = @@
  else
    let pat = escape(@@, a:cmd.'\')
    if g:VeryLiteral
      let pat = substitute(pat, '\n', '\\n', 'g')
    else
      let pat = substitute(pat, '^\_s\+', '\\s\\+', '')
      let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
      let pat = substitute(pat, '\_s\+', '\\_s\\+', 'g')
    endif
    let @/ = '\V'.pat
  endif
  normal! gV
  call setreg('"', old_reg, old_regtype)
endfunction

function! StartSess()
  if !argc()
    execute "Obsession" . g:session_path
  endif
endfunction

function! RestoreSess()
  if !argc() && empty(v:this_session) && filereadable(g:session_path) && !&modified
    execute "source" . g:session_path
  endif
endfunction

function! TabCloseRight(bang)
  let cur=tabpagenr()
  while cur < tabpagenr('$')
    exe 'tabclose' . a:bang . ' ' . (cur + 1)
  endwhile
endfunction

function! TabCloseLeft(bang)
  while tabpagenr() > 1
    exe 'tabclose' . a:bang . ' 1'
  endwhile
endfunction

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

function! ToJSON()
    %!jq .
    set syntax=json
endfunction

function! LargeFile()
    set noshowmatch
    set matchpairs=
    set syntax=off
    set nowrap
    NoMatchParen
    AirlineToggle
endfunction

fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun
"""""""""""""""""""""" END """""""""""""""""""""""""""""""""""""""""""""""""""""""
