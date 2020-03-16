" Colorschemes
set background=dark    " Light theme is used by default
"set t_Co=256
colorscheme PaperColor
"colorscheme solarized8

" Default config
syntax on
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
set textwidth=0     " Don't wrap lines by default.
set nobackup        " Don't keep a backup file.
" set viminfo='20,\"50   " read/write a .viminfo file, don't store more than 50 lines of registers.
set viminfo='10,\"100,:20,%,n~/.viminfo
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm$"|endif|endif
set history=50      " keep 50 lines of command line history.
set ruler           " show the cursor position all the time.
set tabstop=4       " Tab should be 4 spaces not a tab character.
set shiftwidth=4    " Shift lines 4 spaces at a time.
set softtabstop=4   " Backspace will untab(delete 4 spaces), not just a single space TODO: Not sure I like it
set nowrap          " Don't wrap on display edge.
set ignorecase
set nu
set hlsearch
set visualbell
set expandtab

" Disabled for PaperColor scheme
" set bg=light
set pastetoggle=<F11>
" set noai
set ai
set directory=/tmp

" Disabled for PaperColor scheme
" highlight Normal ctermfg=black ctermbg=white
" color default

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd BufEnter *.html setlocal indentexpr=
autocmd BufEnter *.htm setlocal indentexpr=
autocmd BufEnter *.xml setlocal indentexpr=
autocmd BufEnter *.xsd setlocal indentexpr=
autocmd BufEnter *.pt setlocal indentexpr=
autocmd BufEnter *.cpt setlocal indentexpr=
autocmd BufEnter *.xsl setlocal indentexpr=

autocmd BufEnter *.py setlocal colorcolumn=80   " Set a column line at character count.

"Highlight characters in py files with line lengths exceeding 80 chars. TODO: its some off purple colour atm
" highlight OverLength ctermfg=128 guibg=None
" autocmd BufEnter *.py match OverLength /\%81v.\+/

highlight SpecialKey ctermfg=1
set list
set listchars=tab:T>


" TODO: Still testing these.
" Split the window options
set splitbelow
set splitright

" Split window controls
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding on indents
" set foldmethod=indent
" set foldlevel=99

" Enable folding with the spacebar
" nnoremap <space> za

" https://github.com/saltstack/salt-vim
set nocompatible
filetype plugin indent off

" Non ASCII highlight
" '/[^\d0-\d127]'
syntax match NonAscii '[^\x00-\xFF]'
highlight NonAscii guibg=Red ctermbg=2
