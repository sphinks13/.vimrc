if has('mac')
    let plugin_folder = '~/.vim/plugged'
elseif has('win32') || has('win64')
    let plugin_folder = 'C:/vimfiles/plugin'
endif

let &runtimepath.=','.plugin_folder.'/ack.vim'
let &runtimepath.=','.plugin_folder.'/ctrlp.vim'
let &runtimepath.=','.plugin_folder.'/syntastic-local-jsonlint.vim'

call plug#begin(plugin_folder)
    Plug 'altercation/vim-colors-solarized'
    Plug 'vim-airline/vim-airline'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdcommenter'

    Plug 'mhinz/vim-signify'
    Plug 'scrooloose/syntastic', {'for': ['json', 'javascript']}
    Plug 'mtscout6/syntastic-local-eslint.vim', {'for': ['javascript']}

    Plug 'othree/html5.vim', {'for': ['html', 'javascript']}
    Plug 'othree/yajs.vim', {'for': ['html', 'javascript']}
    Plug 'othree/javascript-libraries-syntax.vim', {'for': ['html', 'javascript']}
    Plug 'ternjs/tern_for_vim', {'for': ['javascript']}
    Plug 'maksimr/vim-jsbeautify', {'for': ['html', 'javascript']}
    Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'html']}
    Plug 'cakebaker/scss-syntax.vim', {'for': ['scss']}
call plug#end()

set guioptions-=r  "remove right-hand scroll bar
set guioptions-=l  "remove left-hand scroll bar
set guifont=losevka:h11

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

set background=dark
colorscheme solarized

syntax enable
set foldmethod=syntax
set hlsearch
set hidden

set wildmenu
set wildmode=longest:full,full

set ts=4 sts=4 sw=4 expandtab
set listchars=tab:>-,space:Â·,eol:Â¶

" show line numbers
set number relativenumber

" ignore folders
set wildignore+=$tf/**,.idea/**,bower_components/**,dist/**,node_modules/**,*.so,*.swp,*.zip,*.exe

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

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

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


" MAPPINGS
let g:mapleader = ","
let g:localmapleader = "\\"
