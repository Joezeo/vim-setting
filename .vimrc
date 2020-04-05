" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dense-analysis/ale' "Error checking
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'derekwyatt/vim-protodef'
" 插件列表结束
call vundle#end()
filetype plugin indent on

" 设置快捷键前缀
let mapleader=";"

" 一些基础设定
set nocompatible
set backspace=indent,eol,start
filetype plugin on
set wrap
set showcmd
set tabstop=4
set scrolloff=5

" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 c 开/关缩进可视化
:nmap <silent> <Leader>c <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
" za打开或关闭当前折叠，zM关闭所有折叠，zR打开所有折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" sw 接口和实现之间快速切换
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe" "normal! g'\"" | endif

" 设置vim编码格式，以及打开文件的编码格式
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set termencoding=utf-8
set encoding=utf-8

" 键盘映射
imap jj <Esc>
nnoremap <Space>d <C-d>
nnoremap <Space>u <C-u>
nnoremap <Space>b <C-b>
nnoremap <Space>f <C-f>
nnoremap B <C-b>
nnoremap F <C-f>
nnoremap W :w<CR>
nnoremap Q :q<CR>
map R :source $MYVIMRC<CR>

" NredTree
autocmd vimenter * NERDTree

" ale 代码检查设置
let g:ale_sign_column_always=1
let g:ale_sign_error='>>'
let g:ale_sign_warning='--'

" ale支持的linter详见https://github.com/dense-analysis/ale/blob/master/supported-tools.md
let g:ale_linters={
\    'c':['clang'],
\    'c++':['clang'],
\}
