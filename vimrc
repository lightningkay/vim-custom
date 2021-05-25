"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=500
set autoread
au FocusGained,BufEnter * checktime
set showcmd
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set list
set listchars=tab:--,trail:•

syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File encoding, lang
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lang
let $LANG='en'
set langmenu=en

" Encoding setting
set encoding=utf8
set ffs=unix,dos,mac

" File backup
set nobackup
set nowb
set noswapfile

" Leader key
let mapleader=","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimplug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Start up
Plug 'mhinz/vim-startify'
Plug 'ctrlpvim/ctrlp.vim'

" Status
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Color theme
Plug 'sickill/vim-monokai'
Plug 'NLKNguyen/papercolor-theme'

" Bracket pair
Plug 'jiangmiao/auto-pairs'

" Code comment
Plug 'preservim/nerdcommenter'

" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'gillescastel/latex-snippets'

" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
" Snippets are separated from the engine. Add this if you want them:
" Plug 'honza/vim-snippets'

" Cpp highlight
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

" Conceal
set conceallevel=2
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
let g:tex_conceal_frac=1

" Colorscheme setting
" colorscheme monokai
colorscheme PaperColor

" NerdTree
let g:NERDTreeWinPos="right"
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-h>"

" let g:ycm_complete_in_comments = 1
" let g:ycm_seed_identifiers_with_syntax = 1
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_log_level='debug'

" NERDComment
" Add space after comment
let g:NERDSpaceDelims = 1
