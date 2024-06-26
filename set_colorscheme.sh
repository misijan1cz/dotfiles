#!/bin/sh

username=$(id -u -n 1000)
maindir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

COL_SCHEME_NAMES=(COL_TEXT_LIGHT	COL_TEXT_DARK	COL_WARN_LIGHT	COL_BACK_TRANS)
COL_SCHEME_COLOR=("cdd6f4"			"f4cdd6"		"4974a5"		"00000050")

cp "$maindir/dotswaylock/config.swaylock-template" "/home/$username/.swaylock/config"
for (( i=0; i<${#COL_SCHEME_NAMES[@]}; i++ ))
do
	sed -i "s/(${COL_SCHEME_NAMES[$i]})/${COL_SCHEME_COLOR[$i]}/g" "/home/$username/.swaylock/config"
done


