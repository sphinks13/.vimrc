" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('C:/vimfiles/plugin')
    Plug 'altercation/vim-colors-solarized'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/vim-easy-align'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'othree/html5.vim'
    Plug 'othree/yajs.vim'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'mtscout6/syntastic-local-eslint.vim'
    Plug 'ternjs/tern_for_vim'
    Plug 'maksimr/vim-jsbeautify'
    Plug 'mhinz/vim-signify'
    Plug 'elzr/vim-json'
call plug#end()

syntax enable
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set background=dark
colorscheme solarized
set foldmethod=syntax
set hlsearch
set hidden

set wildmenu
set wildmode=longest:full,full
set guifont=Consolas:h11

set ts=4 sts=4 sw=4 expandtab
set listchars=tab:>-,space:Â·,eol:Â¶

" show line numbers
set number relativenumber

" ignore folders
set wildignore+=$tf/**
set wildignore+=.idea/**
set wildignore+=bower_components/**
set wildignore+=dist/**
set wildignore+=node_modules/**

" ====================
" [> netrw <]
" ====================

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" ====================
" [> ack <]
" ====================

set runtimepath^=C:\vimfiles\plugin\ack.vim

nnoremap ga :Ack!

" ====================
" [> javascript-libraries-syntax <]
" ====================

let g:used_javascript_libs = 'angularjs,underscore,jquery'

" ====================
" [> emmet-vim <]
" ====================

let g:emmet_html5=1

" ====================
" [> JsBeautify <]
" ====================

" format selection
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer>  <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" format the whole file
autocmd FileType javascript nnoremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json nnoremap <buffer>  <c-f> :call JsonBeautify()<cr>
autocmd FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>

" ====================
" [> ctrlp <]
" ====================

set runtimepath^=C:\vimfiles\plugin\ctrlp.vim

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=10
let g:ctrlp_custom_ignore = '$tf\|.idea\|bower_components\|dist\|node_modules'

" ====================
" [> syntactic <]
" ====================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" ====================
" [> syntastic-local-jsonlint.vim <]
" ====================

set runtimepath^=C:\vimfiles\plugin\syntastic-local-jsonlint.vim

" MAPPINGS
let g:mapleader = ","
let g:localmapleader = "\\"
