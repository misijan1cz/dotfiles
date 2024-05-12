#!/bin/bash

dir_conf=(sway waybar wofi foot gammastep mako)
fil_conf=(wal_* wallpaper* user-dirs.dirs)
fil_bins=(bluetuith bluetuith-LICENSE cpu sway-save-outputs)
dir_shre=(fonts backgrounds)
fil_swlk=(config config.bak.effects)

mkdir ./configs
cp ~/.vimrc ./configs/dotvimrc
# also in configs: NetworkManager.conf sources.list wpa_supplicant.conf

# ---------------
#   Definitions
# ---------------

function dir_snapshot () {
	indir=$1
	outdir=$2
	shift 2
	mkdir -p ./$outdir
	while [[ $# -gt 0 ]]
	do
		echo "$1"
		cp -r $indir/$1 ./$outdir/$1
		shift 1
	done
}

function fil_snapshot () {
	indir=$1
	outdir=$2
	shift 2
	mkdir -p ./$outdir
	while [[ $# -gt 0 ]]
	do
		echo "$1"
		cp $indir/$1 ./$outdir/$1
		shift 1
	done
}

# Create and copy .config
dir_snapshot ~/.config		dotconfig		${dir_conf[@]}
fil_snapshot ~/.config		dotconfig		${fil_conf[@]}
fil_snapshot ~/.local/bin	dotlocal/bin	${fil_bins[@]}
dir_snapshot ~/.local/share	dotlocal/share	${dir_shre[@]}
fil_snapshot ~/.swaylock	dotswaylock		${fil_swlk[@]}

