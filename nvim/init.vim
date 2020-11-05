" some links
" https://github.com/neoclide/coc.nvim
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'rbgrouleff/bclose.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'francoiscabrol/ranger.vim'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/LeaderF'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/LeaderF'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'  " need ctags preinstalled
Plug 'dracula/vim', { 'as': 'dracula'  }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" if you use something else than bash or zsh you should probably need to add
" this line in your .vimrc: set shell=bash
set shell=bash

" Change Leader key mapping
let mapleader=","

" Change some key mappings
map <Leader>w :w<CR>
map <Leader>q :q<CR>
" Ranger config
" https://github.com/francoiscabrol/ranger.vim
" disable the default key mapping
let g:ranger_map_keys = 0
" add new mapping 
map <Leader>r :Ranger<CR>
" 
" mapping NerdTree
" https://github.com/preservim/nerdtree
map <Leader>n :NERDTreeToggle<CR>
" enable rainbow
let g:rainbow_active = 1 
"---------- some personal settings
set nu
set relativenumber
autocmd InsertEnter * se cul
set nocompatible
syntax on
inoremap ff <Esc>`^
" tab 
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
"---------- some personal settings
"---------- Leaderf settings
map <Leader>f :Leaderf --popup file<CR>
map <Leader>st :Leaderf --popup tag<CR>
map <Leader>sf :Leaderf --popup function<CR>

" ---------- vimtex config

let g:vimtex_compiler_latexmk_engines = {
    '_'                     : '-pdf',
    'pdflatex'              : '-pdf',
    'dvipdfex'              : '-pdfdvi',
    'lualatex'              : '-xelatex',
    'context (pdftex)'      : '-pdf -pdflatex=texexec',
    'context (luatex)'      : '-pdf -pdflatex=context',
    'context (xetex)'       : '-pdf -pdflatex=''texexec --xtx''',
}

" ---------- vimtex config
" ---------- xclip config
set clipboard+=unnamedplus
" ---------- xclip config


" ---------- coc-snippets config
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
" ---------- coc-snippets configure
" ---------- nerdcommenter configure
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } 

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" ---------- nerdcommenter configure
" ---------- tagbar configure
let g:tagbar_width=30
nnoremap <silent> <F4> :TagbarToggle<CR> " set the switch of tarbar as F4
" ---------- tarbar configure
"  --------- indentLine configure
let g:indentLine_color_term = 239
"  --------- indentLine configure

" cursorline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=darkred cterfg=white
" cursorline
" color themem dracula
colorscheme dracula

" clipboard settings
nnoremap <Leader>c :w !clip.exe<CR>
vnoremap <Leader>c :w !clip.exe<CR>

