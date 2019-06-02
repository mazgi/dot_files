if !1 | finish | endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'w0ng/vim-hybrid'

Plugin 'hashivim/vim-terraform'
let g:terraform_fmt_on_save = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Bundle 'stephpy/vim-yaml'
"Bundle 'tpope/vim-fugitive'
"Bundle 'gregsexton/gitv'
"Bundle 'quickrun.vim'
"Bundle 'AutoComplPop'
"Bundle 'editorconfig/editorconfig-vim'
"Bundle 'tpope/vim-pathogen'
"Bundle 'scrooloose/syntastic'
"call pathogen#infect()
"Bundle 'Markdown'
"Bundle 'chr4/nginx.vim'
"Bundle 'slim-template/vim-slim'
"Bundle 'pangloss/vim-javascript'
"Bundle 'jelera/vim-javascript-syntax'
"Bundle 'leafgarland/typescript-vim'
"Bundle 'scala.vim'
"Bundle 'fatih/vim-go'

syntax on

set modeline
set modelines=3

set autoindent
set cindent
set smartindent

set expandtab
set list
set number
set showmatch

set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932

set background=dark
colorscheme hybrid

augroup VIMRC
  autocmd!
  " 
  autocmd VimEnter,BufWinEnter,WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
  autocmd InsertEnter * highlight CursorLine ctermbg=0
  autocmd InsertLeave * highlight CursorLine ctermbg=235
  autocmd BufRead,BufNewFile *.zsh-theme set filetype=zsh
  " File types
  "autocmd BufRead,BufNewFile *.scala set filetype=scala

  "autocmd FileType fstab setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType limits setlocal expandtab shiftwidth=4 softtabstop=4
  autocmd FileType pam setlocal noexpandtab shiftwidth=4 softtabstop=4
  " 
  autocmd QuickFixCmdPost vimgrep cwindow
augroup END
