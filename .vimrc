set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'Valloric/YouCompleteMe'
"PLUGIN HERE
"
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" START WILLES vimrc

"enable syntax and plugins, set nu/set nonu (for line numbering)
syntax on
filetype plugin on 
set clipboard=unnamedplus

"indenteation configs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"search through recursivly
set path+=**


set wildmenu

" dont bother to be like old Vi
set nocompatible 

" Create tags file (ctags need to be installed)
command! MakeTags !ctags -R .

" - use C + ] to jump to tag under cursor
" - use g C + ] for ambigues tags 
" - use C + t to jump BACK in tag stack

" - help ins-completion

" File browsing
"let g:netrw_banner=0
"let g:netrw_browse_split=4
"let g:netrw_altv=1
"let g:netrw_liststyle=3

"Make own snippet command ",html" like this:
"nnoremap ,html :-1read $HOME/.vim/.skeleton.hmtl<CR>3jwf>a

"set up c++ build
command! Setupcpp set makeprg=g++\ -g\ -o\ testBuild\ %

command! -nargs=1 ReplaceWord :%s/<args>/gc  


nnoremap <F4> :make<CR>
nnoremap <F5> :!./testBuild<CR>
nnoremap <S-F5> :!gdb testBuild<CR>

set spell spelllang=en_us
set completeopt-=preview
