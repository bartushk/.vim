set nocompatible              " be iMproved, required
syntax on
filetype off
set nowrap

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Core plugins
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'

"Helpfull
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'rdnetto/YCM-Generator'

"Javascript 
Plugin 'ternjs/tern_for_vim'
Plugin 'walm/jshint.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'

"Rust language
Plugin 'rust-lang/rust.vim'

Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'

"Python
Plugin 'davidhalter/jedi-vim'

"Snipets
Plugin 'SirVer/ultisnips'

"Web browser
Plugin 'yuratomo/w3m.vim'

"Opencl stuff
Plugin 'petRUShka/vim-opencl'


call vundle#end() 
set autoindent
set number
colorscheme jellybeans

"Run any init.vim script in directory
if findfile("init.vim", ".") == "init.vim"
    autocmd VimEnter * source init.vim
endif

"eclim completion and bindings
let g:EclimCompletionMethod = 'omnifunc'
nnoremap <F4> :JavaImport<CR>

"ignores
let g:ctrlp_custom_ignore = 'node_modules/'
let g:ctrlp_custom_ignore = 'build/'
let g:ctrlp_custom_ignore = 'bin/'

"Nnoremap
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <c-f> :CtrlP<CR>
nnoremap <c-t> :<CR>

"Maps
map <space> <Plug>(easymotion-prefix)
command WQ wq
command Wq wq
command W w
command Q q

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-f>"
let g:UltiSnipsJumpForwardTrigger = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-d>"


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_rust_src_path = '/usr/local/src/rustc-1.10.0/src'
