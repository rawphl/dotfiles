" $MYVIMRC
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'rking/ag.vim'
Plugin 'Shougo/neocomplete'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'Shougo/neosnippet' 
Plugin 'Shougo/neosnippet-snippets'
Plugin 'osyo-manga/vim-over'
call vundle#end()
filetype plugin indent on

syntax on
set background=dark
set clipboard^=unnamed,unnamedplus
set nospell
set shiftwidth=4                    " number of spaces to autoindent
set encoding=utf-8
set tabstop=4                       " number of spaces for a tabstop
set expandtab                       " expand tab to spaces in insert mode
set autoindent                      " enable autoindenting
set number                          " view line numbers
set showmode                        " show current mode
set ruler                           " always show cursor position
set showcmd                         " display incomplete commands on lower right
set showmatch                       " highlight matching braces 
set incsearch                       " incremental search
set hlsearch                        " hightlight search results
set hidden                          " edit another buffer while another one is unsaved IMPORTANT!
set lazyredraw                      " don't update the display while executing macros
set laststatus=2                    " always show status line
set autoread                        " automatically read a file that has changed on disk
set ofu=syntaxcomplete#Complete     " autocompletion so that menu will always appear
set wildmenu                        " enable wildmenu
set wildmode=list:longest,full      " how wild mode should behave
set textwidth=0                     " don't insert EOLs at linebreak
set noswapfile                      " Don't use swapfile
set nobackup                        " Don't create annoying backup files
set so=7                            " keep 7 empty lines from the cursor to the border when scrolling with j or k
set mouse=a
set visualbell                      " no annoying beeping
set t_vb=
set history=1000      
set backspace=indent,eol,start

autocmd BufEnter *.ts,*.tsx set filetype=typescript

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#bufferline#enabled = 1 

" ctrlp
let g:ctrlp_map = '<CR>'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" neocomplete
let g:neocomplete#enable_at_startup = 1 
let g:neocomplete#enable_smart_case = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

" incsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" vim-over
"let g:over_enable_auto_nohlsearch = 1
let g:over_enable_cmd_window = 1

let mapleader = "\<Space>"

imap jj <Esc>
nmap , :
cnoremap ,, <C-c>
" neocomplete 
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump) 
smap <C-k>     <Plug>(neosnippet_expand_or_jump) xmap <C-k>
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprev<CR>

