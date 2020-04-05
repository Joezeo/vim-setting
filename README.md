## 系统环境相关
虚拟机安装 CentOS7 时如果设置静态(static)ip地址会导致网络不可连通，只能使用dchp方式

## 需要安装依赖
`yum install -y perl-ExtUtils-Embed`

## 插件依赖环境
`yum install -y python-devel python3-devel ruby-devel lua-devel libX11-devel gtk-devel gtk2-devel gtk3-devel ncurses-devel`

## Vim编译安装
`./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes --with-python-config-dir=/usr/lib64/python2.7/config --enable-python3interp=yes --with-python3-config-dir=/usr/lib64/config-3.6m-x86_64-linux-gnu --enable-perlinterp=yes --enable-luainterp=yes --enable-gui=gtk2 --enable-cscope --prefix=/usr/local/vim`

使用Vundle管理插件，确保~/.vim/文件夹为空，执行如下命令安装Vundle  
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

插件YouCompleteMe可能报错,执行`sudo apt install vim-gtk`

## .vimrc配置详见库中配置文件

## 使用插件介绍
###  Vim 美化  
---
`Plugin 'altercation/vim-colors-solarized'`  
`Plugin 'tomasr/molokai'`  
`Plugin 'vim-scripts/phd'`  

### Vim 状态栏样式   
---
`Plugin 'Lokaltog/vim-powerline'`  
#### 需要在.vimrc中配置   
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
#### 配置.vimrc,使随vim自启动
`let g:indent_guides_enable_on_vim_startup = 1`
  

### C/C++ 头.h方法快速切换至.cpp文件
---
`Plugin 'derekwyatt/vim-fswitch'`
#### .vimrc 配置
命令：`;sw` : 接口和实现之间快速切换  
*.cpp 和 *.h 间切换  
nmap <silent> <Leader>sw :FSHere<cr>  
  

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

### others...


