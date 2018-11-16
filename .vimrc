" display
set number
set title
set showmatch

" tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" search
set ignorecase
set smartcase
set wrapscan

" NeoBundle
set nocompatible               " Be iMproved

" Required:
set runtimepath+=$HOME/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('$HOME/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'vim-latex/vim-latex'

" Color Scheme
" solarized
NeoBundle 'altercation/vim-colors-solarized'
" " mustang
NeoBundle 'croaker/mustang-vim'
" " jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" " molokai
NeoBundle 'tomasr/molokai'
"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Latex-Suite
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_FormatDependency_pdf='dvi,pdf'
let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf='dvipdfm $*.dvi'
let g:Tex_ViewRule_pdf='evince'
let g:Tex_IgnoredWarnings =
      \"Underfull\n".
      \"Overfull\n".
      \"specifier changed to\n".
      \"You have requested\n".
      \"Missing number, treated as zero.\n".
      \"There were undefined references\n".
      \"Citation %.%# undefined\n".
      \"LaTeX Font Warning:"
let g:Tex_IgnoreLevel = 8

" Color Scheme
colorscheme molokai
if &term =~ "xterm-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
