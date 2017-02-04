set nocompatible 
syntax on
set nowrap

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
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

"Opencl stuff
Plugin 'petRUShka/vim-opencl'

"Go
Plugin 'fatih/vim-go'

"Protobuf
Plugin 'uarun/vim-protobuf'


call vundle#end() 
set autoindent
set number
colorscheme jellybeans

"Run any init.vim script in directory
if findfile("init.vim", ".") == "init.vim"
    autocmd VimEnter * source init.vim
endif

"ignores
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-f>"
let g:UltiSnipsJumpForwardTrigger = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-d>"


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_rust_src_path = '/usr/local/src/rustc-1.10.0/src'
