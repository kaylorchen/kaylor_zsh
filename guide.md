# 安装配置指导

## 安装必要软件

参照以下指令安装软件
```bash
sudo apt install zsh # Your OS is Ubuntu
brew install zsh # Your OS is Mac OS X
```

## 安装配置

### 快速安装

下载本文件夹下所有的文件，把这些文件放到你账户的家目录下，比如你的用户名是 user， 那么你的家目录就是 /home/user。然后解压所有的压缩包,并安装fzf
```bash
bash ./deploy.sh
```
注意： 这里备份的fzf版本是x86版本，如果使用的目标机器是arm64版本:
```bash
bash ./deploy_arm64.sh
```

如果你想使用zsh成为你的默认shell：
```bash
chsh -s /bin/zsh
```
另外,如果你想从bash切换到zsh，只需要在终端里面输入zsh就可以了。

