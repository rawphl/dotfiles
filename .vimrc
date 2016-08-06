" $MYVIMRC
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'hhff/SpacegrayEighties.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-bufferline'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

syntax on
colorscheme SpacegrayEighties
set clipboard^=unnamed,unnamedplus
set nospell
set shiftwidth=4                    " number of spaces to autoindent
set nocompatible
set number
set cursorline
set encoding=utf-8
set tabstop=4                       " number of spaces for a tabstop
set expandtab                       " expand tab to spaces in insert mode
set autoindent                      " enable autoindenting
set number                          " view line numbers
set showmode                        " show current mode
set ruler                           " always show cursor position
set nocursorline                    " have a line indicate cursor position
set showcmd                         " display incomplete commands on lower right
set hidden                          " edit another buffer while another one is unsaved IMPORTANT!
set lazyredraw                      " don't update the display while executing macros
set laststatus=2                    " always show status line
set autoread                        " automatically read a file that has changed on disk
set ofu=syntaxcomplete#Complete     " autocompletion so that menu will always appear
set wildmenu                        " enable wildmenu
set wildmode=list:longest,full      " how wild mode should behave
set guioptions-=T                   " remove toolbar in gVim
set guioptions-=r                   " remove right scrollbar
set guioptions-=R                   " remove right scrollbaset smartcase                       " if a search contains a upper case char, make search case sensitive
set textwidth=0                     " don't insert EOLs at linebreak
set noswapfile                      " Don't use swapfile
set nobackup                        " Don't create annoying backup files
set so=7                            " keep 7 empty lines from the cursor to the border when scrolling with j or k
set mouse=a
set visualbell                      " no annoying beeping
set t_vb=
set foldmethod=expr
set history=1000      

autocmd BufEnter *.ts,*.tsx set filetype=typescript

let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1

let g:ctrlp_cmd = 'CtrlPMixed'

" NERDTREE
" Close if NERDTree is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let g:nerdtree_tabs_autofind=1

" Keybindings
let mapleader = "\<Space>"
imap jk <Esc>
nmap , :
cnoremap ,, <C-c>
nnoremap <Leader>f :NERDTreeTabsToggle<CR>:NERDTreeTabsFind<CR>   
nnoremap <Leader>j :NERDTreeFocusToggle<CR>
nnoremap <Leader>p :CtrlPMixed<CR>
nnoremap <Leader>1 :b1<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>2 :b2<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>6 :b3<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>4 :b4<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>5 :b5<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>6 :b6<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>7 :b7<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>8 :b8<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
nnoremap <Leader>9 :b9<CR> :NERDTreeTabsFind<CR>:NERDTreeFocusToggle<CR>
