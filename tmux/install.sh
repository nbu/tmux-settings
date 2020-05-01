#!/bin/bash

echo "Configuring tmux..."

tmux_dir=$(PWD)/$(dirname $BASH_SOURCE)
tmux_file=".tmux.conf"

# Configure plugin manager
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Configure tmux
mv ~/${tmux_file} ~/${tmux_file}.bak
touch ~/${tmux_file}
echo "source-file ${tmux_dir}/${tmux_file}" > ~/${tmux_file}

