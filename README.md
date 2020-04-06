## 系统环境相关
虚拟机安装 CentOS7 时，如果网络连接方式为NAT，设置静态(static)ip地址会导致网络不可连通，只能使用dchp方式。  
另外此 Vim 配置主要针对于 Linux 下 C/C++ 语言开发。  

## 需要安装依赖
`yum install -y perl-ExtUtils-Embed`

## 插件依赖环境
`yum install -y python-devel python3-devel ruby-devel lua-devel libX11-devel gtk-devel gtk2-devel gtk3-devel ncurses-devel`

## Vim编译安装
`./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes --with-python-config-dir=/usr/lib64/python2.7/config --enable-python3interp=yes --with-python3-config-dir=/usr/lib64/config-3.6m-x86_64-linux-gnu --enable-perlinterp=yes --enable-luainterp=yes --enable-gui=gtk2 --enable-cscope --prefix=/usr/local/vim`

使用Vundle管理插件，确保~/.vim/文件夹为空，执行如下命令安装Vundle  
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

插件YouCompleteMe可能报错,执行`sudo apt install vim-gtk`

## .vimrc个人常用通用配置, 其他详见库中配置文件
---
**设置快捷键前缀**  
`let mapleader=";"`  
  
**键盘映射**  
`imap jj <Esc>`  
`nnoremap <Space>d <C-d>`  
`nnoremap <Space>u <C-u>`  
`nnoremap <Space>b <C-b>`  
`nnoremap <Space>f <C-f>`  
`nnoremap B <C-b>`  
`nnoremap F <C-f>`  
`nnoremap W :w<CR>`  
`nnoremap Q :q<CR>`  
`map R :source $MYVIMRC<CR>`   

**一些基础设定**  
`set nocompatible`  
`set backspace=indent,eol,start`  
`set wrap`  
`set showcmd`  
`set tabstop=4`  
`set scrolloff=5`  
设置256色，否则某些样式插件无法生效   
`set t_Co=256`  
  
**语法高亮相关**    
开启语法高亮功能  
`syntax enable`  
允许用指定语法高亮配色方案替换默认方案   
`syntax on`  
总是显示状态栏  
`set laststatus=2`  
显示光标当前位置  
`set ruler`  
开启行号显示  
`set number`  
高亮显示当前行/列  
`set cursorline`  
`set cursorcolumn`  
高亮显示搜索结果  
`set hlsearch`  
  
**缩进相关**   
自适应不同语言的智能缩进  
`filetype indent on`  
将制表符扩展为空格  
`set expandtab`  
设置编辑时制表符占用空格数  
`set tabstop=4`  
设置格式化时制表符占用空格数  
`set shiftwidth=4`  
让 vim 把连续数量的空格视为一个制表符  
`set softtabstop=4`  

## 使用插件介绍
###  Vim 美化  
---
`Plugin 'morhetz/gruvbox'`(推荐)  
`Plugin 'jnurmine/Zenburn'`  
`Plugin 'altercation/vim-colors-solarized'`  
`Plugin 'tomasr/molokai'`  
`Plugin 'vim-scripts/phd'`  

### Vim 状态栏样式   
---
`Plugin 'vim-airline/vim-airline'`(推荐)  
`Plugin 'Lokaltog/vim-powerline'`(相比样式更花哨)   
#### powerline 需要在.vimrc中配置   
`let g:Powerline_symbols = 'fancy'`

### C/C++ 语法高亮
---
`Plugin 'octol/vim-cpp-enhanced-highlight'`  
#### .vimrc中配置额外属性(详见https://github.com/octol/vim-cpp-enhanced-highlight)
Highlighting of class scope is disabled by default. To enable set
`let g:cpp_class_scope_highlight = 1`

Highlighting of member variables is disabled by default. To enable set
`let g:cpp_member_variable_highlight = 1`

Highlighting of class names in declarations is disabled by default. To enable set
`let g:cpp_class_decl_highlight = 1`
  

### Tab 缩进指示
---
Plugin 'nathanaelkane/vim-indent-guides'
#### 配置.vimrc
使随 vim 自启动  
`let g:indent_guides_enable_on_vim_startup = 1`  
从第二层开始可视化显示缩进  
`let g:indent_guides_start_level=2`  
色块宽度  
`let g:indent_guides_guide_size=1`  
快捷键 ;i 开/关缩进可视化  
`:nmap <silent> <Leader>i <Plug>IndentGuidesToggle`  
  

### C/C++ 头.h方法快速切换至.cpp文件
---
`Plugin 'derekwyatt/vim-fswitch'`
#### .vimrc 配置
命令：`;sw` : 接口和实现之间快速切换  
*.cpp 和 *.h 间切换  
`nmap <silent> <Leader>sw :FSHere<cr>`  
  

### 设置标签，快速跳转
---
`Plugin 'kshenoy/vim-signature'`

### 书签设置
---
`Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'`

### 智能选择文本
---
`Plugin 'gcmt/wildfire.vim'`  
进入visual模式后，键入命令：  

`i'` : 选择单引号中的内容  
`i"` : 选择双引号中的内容  
`i)` : 选择小括号中的内容  
`i]` : 选择中括号中的内容  
`i}` : 选择大括号中的内容  

### 异常检查 ale
---
`Plugin 'dense-analysis/ale'`  
#### .vimrc 配置
总是显示异常信息标志列  
`let g:ale_sign_column_always=1`  
设置异常信息标志图形  
`let g:ale_sign_error='>>'`  
设置警告信息标志图形  
`let g:ale_sign_warning='--'`  
根据语言设置不同的 linter ,ale 支持的linter详见https://github.com/dense-analysis/ale/blob/master/supported-tools.md  
`let g:ale_linters={`  
`\    'c':['clang'],`  
`\    'c++':['clang'],`  
`\}`    

### 文件列表，NERDTree
---
`Plugin 'scrooloose/nerdtree'`  
#### .vimrc 文件配置
NERDTree 随 Vim 自启动  
`autocmd vimenter * NERDTree`   
Ctrl+n 打开/关闭 NERDTree  
`map <C-n> :NERDTreeToggle<CR>`  

### others...


