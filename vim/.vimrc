" backspace options
set backspace=indent,eol,start
 
 
" basic options
set showmatch
set ruler
"set number
"
set sta
set wildmenu
"set encoding=cp949
"set encoding=utf-8
set term=ansi
set scrolloff=3
set nu
"set visualbell
 
 
" indent options
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
 
 
" search method
set hlsearch
set incsearch
" title bar
set title
set titlestring=%{hostname()}:\ %f
set titlelen=60
 
 
" status bar
set laststatus=2
set statusline=[%02n]%*\ %f%*\ %(\ (%M%R%H)%)\%=ASCII=%b\ HEX=%B\ Pos=<%v,%l>\ %P
 
 
" cscope
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
cs add ${CSCOPE_DB}/cscope.out
set csverb
 
 
" shell
let &shell='/bin/bash -f'
map <C-Z> :shell<CR>
 
 
" key map for focus windows
map > :n<CR>
map < :prev<CR>
map <C-E> :exec &enc=="cp949" ? ":se enc=utf-8" : ":se enc=cp949" <CR>:e<CR>:se enc<CR>
 
 
" syntax
syntax on
colorscheme jellybeans

hi StatusLine cterm=bold,reverse ctermbg=Yellow ctermfg=Blue
hi StatusLineNC cterm=bold,reverse
" save last localtion for WIN32 platform
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
au BufNewFile,BufRead *.c,*.cc,*.cpp,*.inl,*.h,*.hpp set ft=cpp cindent autoindent expandtab
" set ml type language indentation
filetype on
au BufNewFile,BufRead *.xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au BufNewFile,BufRead *.html setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
