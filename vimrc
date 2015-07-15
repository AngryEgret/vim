" Copy or symlink to ~/.vimrc or ~/_vimrc.

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'klen/python-mode'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-rooter'

call plug#end()

filetype plugin indent on         " Turn on file type detection.

set background=dark
colorscheme solarized

set showmode                      " Display the mode you're in.
set number                        " Show line numbers.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set mouse=a                       " Mouse integration

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

set wmh=0                         " Truly minimize splits

autocmd BufWritePre <buffer> StripWhitespace
set tabstop=2                    " Global tab width.
set softtabstop=2
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

map <C-n> :NERDTreeToggle<CR>

