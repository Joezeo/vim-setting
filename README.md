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
