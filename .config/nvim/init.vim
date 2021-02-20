" calling Plug
call plug#begin('~/.config/nvim/plugged')


" Code Complition
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-snippets',
    \ 'coc-tsserver',
    \ 'coc-rls',
    \ 'coc-python',
    \ 'coc-eslint',
    \ 'coc-pairs',
    \ 'coc-highlight'
\ ]


" Color scheme

Plug 'rakr/vim-one'

" Status line

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}' " Show time instead of line number

call plug#end()

" for coc 
set hidden
set cmdheight=2
set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" color scheme
set termguicolors
colorscheme one
let g:airline_theme='one'
set background=dark
" line numbering
set nu 
set relativenumber

" indenting 
set tabstop=5 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

" multi windowd work

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Also allow this in terminals
tmap <C-H> <Esc><C-H>
tmap <C-J> <Esc><C-L>
tmap <C-K> <Esc><C-K>
tmap <C-L> <Esc><C-L>
" clipboard
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
nmap <C-v> "+p
imap <C-v> <ESC>"+pa

" search
set incsearch ignorecase smartcase hlsearch

" splits
set splitbelow
set splitright

" encoding
set encoding=utf-8
set fileencoding=utf-8

" backups
set nobackup
set nowritebackup
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile

" etc
set noshowmode
set formatoptions-=cro
" set mouse=a
set updatetime=300