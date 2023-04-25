# 安装配置指导

## 安装必要软件

参照以下指令安装软件
```bash
sudo apt install zsh # Your OS is Ubuntu
brew install zsh # Your OS is Mac OS X
```

## 安装配置

```bash
git clone https://gitee.com/kaylor/kaylor_zsh.git
```

### 快速安装

下载本文件夹下所有的文件，把这些文件放到你账户的家目录下，比如你的用户名是 user， 那么你的家目录就是 /home/user。然后解压所有的压缩包,并安装fzf  
```bash
cd kaylor_zsh/
bash ./deploy.sh
```
注意： 
1. Ubuntu版本如果低于19.10，脚本会在最后安装的fd-find的时候报错。只需要屏蔽一下配置就好，打开~/.zshrc，注释以下几行：

```bash
# export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git --color=always'
```
2. 这里备份的fzf版本是x86版本，如果使用的目标机器是arm64版本:  
```bash
cd kaylor_zsh/
bash ./deploy_arm64.sh
```

如果你想使用zsh成为你的默认shell：
```bash
chsh -s /bin/zsh
```
另外,如果你想从bash切换到zsh，只需要在终端里面输入zsh就可以了。

### 安装字体文件
Ubuntu下打开该文件夹，双击字体（*ttf）文件安装即可。

