" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim' "Silver searcher in ctrl-P
Plugin 'kchmck/vim-coffee-script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'djoshea/vim-autoread'
Plugin 'slim-template/vim-slim'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors' " Sublime Text style multiple cursors (put cursor on a word or selection, then hit C-n)
" Helper to end control structures automatically (ruby, bash, VS, C/C++ etc)
Plugin 'tpope/vim-endwise'
" Ruby editing niceties (c-x c-o to show methods)
Plugin 'vim-ruby/vim-ruby'
" Rails navigation and much more (:A and :R, also try :Emodel name!)
Plugin 'tpope/vim-rails'
" Git wrapper for vim (try :Gblame)
Plugin 'tpope/vim-fugitive'
" Change surrounding chars (try cs\"' inside braces - remove the \ )
Plugin 'tpope/vim-surround'
" Helper to end control structures automatically (ruby, bash, VS, C/C++ etc)
" Ruby Minitest syntax & autocomplete matchers
Plugin 'sunaku/vim-ruby-minitest'
" Autoclosing of quotes, parentheses, brackets etc
Plugin 'Raimondi/delimitMate'
" Begins tab completion with a single <tab> instead of c-x c-o
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
" Global find and replace
Plugin 'dkprice/vim-easygrep'
call vundle#end()

set nocompatible              " be iMproved, required
set number
set nowrap
set splitright
set backspace=indent,eol,start
set matchpairs+=<:>
set incsearch
set tabstop=2
set autoindent
set copyindent
set shiftwidth=2
set spell
set cursorline
set showmode
set showmatch
set clipboard=unnamed "enable default clipboard to be the system clipboard
set lazyredraw " Do not redraw while running macros
set ttyfast " Increase buffer size for redrawing (this sounds very old school)
" Don't use a temporary swapfile, backup save or write that backup to disk
set noswapfile
set nobackup
set nowritebackup

" Move .swp files out of the current dir
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

syntax enable
filetype plugin indent on

"================= Mapping =================
let mapleader=" "
let NERDTreeShowHidden=1
map <leader>n :NERDTreeToggle<cr>

"================= Syntastic Config =============
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Remap arrow keys to break the habit
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

noremap <S-j> :tabprevious<CR>
nnoremap <S-k> :tabnext<CR>
nnoremap <S-t> :tabnew<CR>
nnoremap <S-q> :tabclose<CR>

" No tmux session, so navigate panes with <c-hjkl>
map <c-j> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

nnoremap ; :
nnoremap j gj
nnoremap k gk
colorscheme solarized
set background=light

if has("autocmd")
"======================= Cool stuff from Simon ===================
" Close vim if nerdtree is the last window left open
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Check for external file changes
   autocmd CursorHold,CursorMoved,BufEnter * checktime

" Remove trailing whitespaces on save
  autocmd BufWritePre * :%s/\s\+$//e

  " Autoindent with two spaces, always expand tabs
  " These are abbreviations for tabstop, shiftwidth, softtabstop
  autocmd BufNewFile,BufReadPost * set ai ts=2 sw=2 sts=2 et
end


" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" " Source https://github.com/thoughtbot/dotfiles/blob/master/vimrc
if executable('ag')
   " Use Ag over Grep
     set grepprg=ag\ --nogroup\ --nocolor

   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

