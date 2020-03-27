"set et ts=8 sw=4
"set ts=4 sw=4 et
"
" use indents of 2 spaces, and have them copied down lines:
"set shiftwidth=2
"set shiftround
"set expandtab

let g:tex_flavor = "latex"

autocmd FileType make set local noexpandtab

set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" tab management
noremap <C-e> :tabe 
noremap <A-Right> :tabn<CR>
noremap <A-Left> :tabp<CR>
noremap <F1> :tabn 1<CR>
noremap <F2> :tabn 2<CR>
noremap <F3> :tabn 3<CR>
noremap <F4> :tabn 4<CR>
noremap <F5> :tabn 5<CR>
noremap <F6> :tabn 6<CR>
noremap <F7> :tabn 7<CR>
noremap <F8> :tabn 8<CR>
noremap <F9> :tabn 9<CR>

" have the usual indentation keystrokes still work in visual mode:
vnoremap <C-T> >
vnoremap <C-D> <LT>
vmap <Tab> <C-T>
vmap <S-Tab> <C-D>

" have <Tab> (and <Shift>+<Tab> where it works) change the level of
" indentation:
inoremap <Tab> <C-T>
inoremap <S-Tab> <C-D>
" [<Ctrl>+V <Tab> still inserts an actual tab character.]

"I don't want to see a menu if there is only one option
set completeopt=menu

" force omni complete to show all memebers
let g:OmniCpp_DisplayMode=1

"don't attempt to equal out the size of my windows
set noequalalways

"set up the grep command so that :grep will run on currently open file
set grepprg=grep\ -n\ -H\ $*\ %

"wraping is disabled by default
set nowrap

"get rid of the menu and tool bar
"set guioptions -=m
"set guioptions -=T

"set guifont=8x13

"make sure we can get any size window we want
set winminheight=0

set winminwidth=0

"indenting the way editors should
set autoindent

"indenting the way code should
set smartindent

"show the {}, (), and [] match as you type
set showmatch

"get rid of the audible bell
set novb

"Highlight the search string that was found
set hls

" reduce the number of times the screen is refreshed.
set lazyredraw

"show status ruler at the bottom
set ruler

"ignore the case unless the search has an uppercase in it
set ignorecase smartcase

" force diff to ignore white space and add filler
" To keep the source aligned
set diffopt=filler,iwhite

"This will force word wraps to happen at word boundries
set linebreak

"Turn on line numbers
set nu

"awesome coloscheme
"colorscheme asu1dark

"makes the backspace and delete key work the right way
if (&term =~ "rxvt")
	set t_kb=
	fixdel
endif

"set shortmess=filnxtToOI
set bs=2

"makes sf split into a new window
nmap <silent> sf :new <cfile><CR>  
nmap <silent> sv :vs <cfile><CR>
nmap <silent> ss :90split <cfile><CR>

nmap <silent> <C-d>o :diffthis<CR>
nmap <silent> <C-d>f :set nodiff foldcolumn=0<CR>

map! <silent> <S-Insert> <MiddleMouse>

"some fun abbreviations
iab yuo you
iab teh the

"holy crap selecting works
behave mswin

set nocp
filetype plugin on

"allow syntax highlighting
syntax on
