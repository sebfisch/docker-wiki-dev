if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'
call plug#end()

set noshowmode
set number relativenumber
set nu rnu
set expandtab
set shiftwidth=2
set softtabstop=2

colorscheme delek

"Lightline is configured to show Git status
let g:lightline = {
  \ 'colorscheme': 'delek',
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'readonly', 'filename', 'modified', 'gitstatus' ]
  \   ]
  \ },
  \ 'component_function': {
  \   'gitstatus': 'FugitiveStatusline'
  \ }
\}

"VimWiki is configured to match Hugo's file structure
let g:vimwiki_dir_link = '_index'
let g:vimwiki_list = [{
  \ 'path': './content',
  \ 'index': '_index',
  \ 'syntax': 'markdown',
  \ 'ext': '.md',
\}]

nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

nnoremap <leader>w :Gwrite<CR>

