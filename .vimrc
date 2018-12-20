"WILLES vimrc

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

nnoremap <F4> :make<CR>
nnoremap <F5> :!./testBuild<CR>
nnoremap <S-F5> :!gdb testBuild<CR>
