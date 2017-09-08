"文件搜索路径
set path=.,/usr/include/*,,

" 控制
set nocompatible              "关闭vi兼容
filetype off                  "关闭文件类型侦测,vundle需要
set fileencodings=utf-8,gbk  "使用utf-8或gbk编码方式
syntax on                    "语法高亮
set backspace=2              "退格键正常模式
set whichwrap=<,>,[,]        "当光标到行首或行尾，允许左右方向键换行
set autoread                  "文件在vim外修改过，自动重载     
set nobackup                  "不使用备份
set confirm                  "在处理未保存或只读文件时，弹出确认消息 
set scrolloff=3              "光标移动到距离顶部或底部开始滚到距离
set history=1000              "历史记录数
set mouse=                    "关闭鼠标
set selection=inclusive      "选择包含最后一个字符
set selectmode=mouse,key      "启动选择模式的方式
set completeopt=longest,menu  "智能补全,弹出菜单，无歧义时才自动填充
set noswapfile                "关闭交换文件
set hidden                    "允许在有未保存的修改时切换缓冲区

"显示

set t_Co=256                  "可以使用的颜色数目
set number                    "显示行号
set laststatus=2              "显示状态行
set ruler                    "显示标尺
set showcmd                  "显示输入的命令
set showmatch                "高亮括号匹配
set matchtime=1              "匹配括号高亮的时间(十分之一秒)
set matchpairs={:},(:)          "匹配括号"{}""()"   
set hlsearch                  "检索时高亮匹配项
set incsearch                "边检索边显示匹配
set go-=T                    "去除gvim的toolbar

"格式
set expandtab              	  "将tab转换为空格
set shiftwidth=4              "自动缩进的距离,也是平移字符的距离
set tabstop=4                "tab键对应的空格数
set autoindent                "自动缩进
set smartindent              "智能缩进
set list
set listchars=tab:>-,trail:•

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'altercation/vim-colors-solarized'
Plugin 'spf13/vim-colors'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'Lokaltog/vim-powerline.git'
Plugin 'wincent/command-t'
Plugin 'tomtom/tlib_vim'
Plugin 'tomtom/viki_vim'
Plugin 'jiangmiao/auto-pairs'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'taglist.vim'
Plugin 'EasyGrep'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
if isdirectory(expand("~/.vim/bundle/vim-colors"))
    colorscheme molokai          "选择配色方案
endif

"-----NERDTree-----
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen=1
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
nnoremap <silent> <Leader>o :NERDTreeFind<CR>

"-----Powerline-----
"set fillchars+=stl:\ ,stlnc:\
"let g:Powerline_symbols = 'compatible'
"let g:Powerline_stl_path_style = 'filename'  "只显示文件名

"-----Airline-------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':p:t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab



" ---------ctrlp--------- 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1 : ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
        \ 2: ['.hg', 'hg --cwd  %s locate -I .'],
    \ }
\ }


"-----Command-T-----
let g:CommandTFileScanner = 'ruby'  "使用ruby作为文件浏览器
let g:CommandTTraverseSCM = 'dir'    "根目录为执行vim时所在的目录 
"打开文件跳转
nnoremap <silent> <Leader>f :CommandT<CR>

"-----taglist-----
let Tlist_Show_One_File = 1          "只显示当前文件的taglist
let Tlist_Exit_OnlyWindow = 1        "taglist是最后一个窗口时退出vim
let Tlist_Use_Left_Window = 1        "在左侧窗口显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1 "打开taglist时，光标停在taglist窗口
let Tlist_Auto_Update = 1              "自动更新
" 打开标签浏览器
nnoremap <silent><Leader>dt :Tlist<CR>
" 重新生成标签
"nnoremap <silent><Leader>bt :!~/Myfiles/Tool/sh/ctags/hitags.sh<CR>
" 高亮标签
"nnoremap <silent><Leader>ht :so tags.vim<CR>

"-----cscope-----
"加载cscope库
if has("cscope")
    "set csprg=/usr/local/bin/cscope
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

set cscopequickfix=s-,c-,d-,i-,t-,e- "使用quickfix窗口显示结果
"打开引用窗口
nnoremap <silent><Leader>cw :cw<CR>
"重新生成索引文件
nnoremap <silent><Leader>bc :!cscope -Rbq<CR>
"s: 查找本C符号
"g: 查找本定义
"d: 查找本函数调用的函数
"c: 查找调用本函数的函数
"t: 查找本字符串
"e: 查找本egrep模式
"f: 查找本文件
"i: 查找包含本文件的文件
nnoremap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>

"-----EasyGrep-----
let EasyGrepMode = 2        "根据文件类型搜索相应文件
let EasyGrepRecursive = 1  "递归搜索
let EasyGrepCommand = 1    "使用grep
let EasyGrepJumpToMatch = 0 "不要跳转
