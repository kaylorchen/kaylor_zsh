#!/bin/bash
echo shell is $SHELL
if [[ $SHELL =~ "zsh" ]]; then
	echo "zsh shell"
	cur_file=$(realpath $0)
	echo current_file is $cur_file
	cur_dir=${cur_file%/*}
elif [[ $SHELL =~ "bash" ]]; then
	echo "bash shell"
	cur_dir=$(cd $(dirname -- ${BASH_SOURCE[0]}) && pwd)
fi
echo cur_dir is $cur_dir
if [ ! -d "${HOME}/.fzf" ];then
	tar -xf ${cur_dir}/.fzf.tgz -C ~/
fi
tar -xf ${cur_dir}/.oh-my-zsh.tgz -C ~/
tar -xf ${cur_dir}/.zplug.tgz -C ~/
mkdir -p ~/.cache/gitstatus
tar -xf ${cur_dir}/gitstatusd-linux-aarch64.tar.gz -C ~/.cache/gitstatus
cp ${cur_dir}/.zshrc ${cur_dir}/.p10k.zsh ~/
cd ~
tar -xvf ${cur_dir}/fzf*.gz -C ~/.fzf/bin/
~/.fzf/install
sudo apt update
sudo apt install fd-find highlight -y
sudo ln -s /usr/bin/fdfind /usr/bin/fd
