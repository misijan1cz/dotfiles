#!/bin/bash

username=$(id -u -n 1000)
dotfiles_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Running ditfiles install from $dotfiles_dir"

# Copy config files
mkdir -p /home/$username/.config
mkdir -p /home/$username/.local
mkdir -p /home/$username/.swaylock
mkdir -p /home/$username/Pictures
mkdir -p /home/$username/Documents
mkdir -p /home/$username/Music
mkdir -p /home/$username/Videos
cp -r $dotfiles_dir/dotconfig/* /home/$username/.config/
cp -r $dotfiles_dir/dotlocal/* /home/$username/.local/
cp -r $dotfiles_dir/dotswaylock/* /home/$username/.swaylock/
cp $dotfiles_dir/configs/dotvimrc /home/$username/.vimrc

echo "Dotfiles installed"
