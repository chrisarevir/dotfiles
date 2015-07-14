execute pathogen#infect()

" Basic Editting Config
set nocompatible
" Allow unsaved background buffers and remember marks/undo for them
set hidden
set history=10000
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
" Make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" Highlight current line
set cursorline
set ruler
set number
set cmdheight=1
set switchbuf=useopen
set numberwidth=6
set showtabline=2
set winwidth=90
set tags=tags;/
" Prevent Vim from clobbering the scrollback buffer. See
" " http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" Keep more context when scrolling off the end of a buffer
set scrolloff=3
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
" Display incomplete commands
set showcmd
" Enable highlighting for syntax
syntax on
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
set wildmode=longest,list
" Make tab completion for files/buffers act like bash
set wildmenu
let mapleader = "\\"
" Enable mouse usage
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guioptions-=T
"set t_Co=256 " 256 colors
set background=dark
colorscheme flatcolor
highlight clear SignColumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOVING BLOCKS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert mode
inoremap ∆ <ESC>:m .+1<CR>==gi
inoremap ˚ <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Normal mode
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move between windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Use the arrows to something usefull
map <right> :bn<cr>
map <left>  :bp<cr>
map <down>  :bp<bar>sp<bar>bn<bar>bd<CR>


" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vroom_detect_spec_helper = 1
let g:vroom_use_spring = 1
let g:vroom_use_binstubs = 1

let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'

let g:ctrlp_max_depth=40
let g:ctrlp_max_file=0
let g:ctrlp_max_height=50
let g:ctrlp_working_path_mode = ''
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

let g:vimrubocop_config = '.rubocop.yml'
let g:vimrubocop_keymap = 0
let g:airline#extensions#tabline#enabled = 1

let g:syntastic_ruby_checkers           = ['rubocop']
let g:syntastic_scss_checkers           = ['scss_lint']
let g:syntastic_javascript_checkers     = ['jsxhint']
"let g:syntastic_mode_map                = { 'mode': 'passive' }

let g:jsx_ext_required = 0

nmap <Leader>c :SyntasticCheck<CR>
nmap <Leader>p :NERDTreeToggle<CR>
nmap <Leader>b :Gblame<CR>

function WriteCreatingDirs()
  execute ':silent !mkdir -p %:h'
  write
endfunction

command W call WriteCreatingDirs()
