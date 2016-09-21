call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/deoplete-typescript'
Plug 'editorconfig/editorconfig-vim'
Plug 'neomake/neomake'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/unite.vim'
Plug 'mhartington/vim-typings'

call plug#end()

filetype on

color torte

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well

"" Code folding
set foldmethod=indent
set foldlevel=99

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Line numbering
set number

"Higlight current line only in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

"Highlight cursor
highlight CursorLine ctermbg=8 cterm=NONE

set directory=~/.vim-tmp
set backupdir=~/.vim-tmp

let g:deoplete#enable_at_startup=1

let g:neomake_open_list=2
let g:neomake_list_height=5

autocmd BufReadPost * Neomake
autocmd BufWritePost * Neomake

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\ : pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"
smap <expr><TAB> neosnippet#jumpable() ?
\ "\<Plug>(neosnippet_jump)
\ : "\<TAB>"
imap <expr><CR> pumvisible() && neosnippet#expandable() ?
\ "\<Plug>(neosnipped_expand)" : "\<CR>"

imap jj <Esc>

highlight NbSp ctermbg=lightred guibg=lightred
match NbSp /\%xa0/

inoremap   <Esc> 

nnoremap . :

