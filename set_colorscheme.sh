#!/bin/sh

username=$(id -u -n 1000)
maindir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

COL_SCHEME_NAMES=(COL_TEXT_LIGHT	COL_TEXT_DARK	COL_WARN_LIGHT	COL_WARN_DARK	COL_BACK	COLA_BACK		RGBA_BACK)
COL_SCHEME_COLOR=("cdd6f4"			"4974a5"		"f4cdd6"		"ff4444"		"000000"	"00000050"		"0, 0, 0, 0.5")

# Swaylock
cp "$maindir/templates/config.swaylock-template" "/home/$username/.swaylock/config"
for (( i=0; i<${#COL_SCHEME_NAMES[@]}; i++ ))
do
	sed -i "s/(${COL_SCHEME_NAMES[$i]})/${COL_SCHEME_COLOR[$i]}/g" "/home/$username/.swaylock/config"
done

# Waybar
cp "$maindir/templates/style.css.waybar-template" "/home/$username/.config/waybar/style.css"
for (( i=0; i<${#COL_SCHEME_NAMES[@]}; i++ ))
do
	sed -i "s/(${COL_SCHEME_NAMES[$i]})/${COL_SCHEME_COLOR[$i]}/g" "/home/$username/.config/waybar/style.css"
done

# Foot
cp "$maindir/templates/foot.ini.foot-template" "/home/$username/.config/foot/foot.ini"
for (( i=0; i<${#COL_SCHEME_NAMES[@]}; i++ ))
do
	sed -i "s/(${COL_SCHEME_NAMES[$i]})/${COL_SCHEME_COLOR[$i]}/g" "/home/$username/.config/foot/foot.ini"
done
