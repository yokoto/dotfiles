" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'chriskempson/vim-tomorrow-theme'
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
"
"
"vim-indnet-guies
NeoBundle 'nathanaelkane/vim-indent-guides'
"vim-json
NeoBundle 'leshill/vim-json'

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 2


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
autocmd ColorScheme * highlight LineNr ctermfg=101

" colors
colorscheme Tomorrow-Night-Bright

