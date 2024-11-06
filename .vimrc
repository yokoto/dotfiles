" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'chriskempson/vim-tomorrow-theme'
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
"vim-indent-guies
NeoBundle 'nathanaelkane/vim-indent-guides'
"neocomplete/neosnippet
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle "Shougo/neosnippet"
NeoBundle 'Shougo/neosnippet-snippets'
"lexima.vim
NeoBundle 'cohama/lexima.vim'
"vim-javascript
NeoBundle 'leshill/vim-json'
"NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/yajs.vim'
NeoBundle 'maxmellon/vim-jsx-pretty'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'othree/es.next.syntax.vim'
NeoBundle 'kchmck/vim-coffee-script'
"vim-typescript
NeoBundle 'leafgarland/typescript-vim'
"vim-html5
NeoBundle 'othree/html5.vim'
"vim-slim
NeoBundle 'slim-template/vim-slim'

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 2
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
let g:used_javascript_libs = 'jquery,underscore,backbone,react'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck 

"=========================================================
"colorscheme
"---------------------------------------------------------

" Must set
set nocompatible
syntax enable
syntax on
filetype plugin indent on
set background=dark
" Setting of tab
set expandtab
set tabstop=2
set softtabstop=4
set shiftwidth=2

set number
set numberwidth=4
set cursorline
"viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible
"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"BSで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start
autocmd ColorScheme * highlight LineNr ctermfg=101

" colors
colorscheme Tomorrow-Night-Bright
