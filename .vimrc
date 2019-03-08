set nocompatible 
set nobackup
set noswapfile
syntax on
set nowrap
set clipboard=unnamedplus
set shell=/bin/bash
set colorcolumn=80

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
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
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'

"Snipets
Plugin 'SirVer/ultisnips'

"Python
Plugin 'davidhalter/jedi-vim'
Plugin 'tell-k/vim-autopep8'

"Rust language
Plugin 'rust-lang/rust.vim'
Plugin 'rhysd/vim-clang-format'

call vundle#end() 
set autoindent
set number
colorscheme jellybeans

"Run any init.vim script in directory
if findfile("init.vim", ".") == "init.vim"
    autocmd VimEnter * source init.vim
endif

"ignores
let g:ctrlp_custom_ignore = '\v[\/](node_modules/|target/|dist/|build/|bin/)|(\.(swp|ico|git|svn))$'

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
let g:ycm_rust_src_path = '~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:ultisnips_python_style = 'google'

autocmd FileType rust nnoremap <Leader>f :RustFmt<CR>


" autopep stuff
let g:python_recommended_style = 0
let g:autopep8_indent_size=2
let g:autopep8_disable_show_diff=1
autocmd FileType python nnoremap <leader>f  :call Autopep8()<CR>
let g:autopep8_max_line_length=79
