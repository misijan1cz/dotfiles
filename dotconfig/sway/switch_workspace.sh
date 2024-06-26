#!/bin/sh

# Easy approach to getting workspace number
#CUR_WORKSPACE=$(swaymsg -t get_outputs | jq -r '.[] | select(.focused)' | jq -r '.current_workspace')

# Better approach to getting workspace number
CUR_DISPLAY=$(swaymsg -t get_tree | jq -r --unbuffered --compact-output '
(
    select(.name == "root") |
        first(.focus[]) )')

CUR_WORKSPACE=$(swaymsg -t get_tree | jq -r --unbuffered --compact-output "
(
    select(.name == \"root\") |
    .nodes[] |
    select(.id == $CUR_DISPLAY) |
    .current_workspace )")

TO_WORKSPACE=$CUR_WORKSPACE

# Workspace switching

if [ $2 == "prev" ]; then
    TO_WORKSPACE=$(expr $CUR_WORKSPACE - 1)
elif [ $2 == "next" ]; then
    TO_WORKSPACE=$(expr $CUR_WORKSPACE + 1)
fi

if [ $TO_WORKSPACE -eq 11 ]; then
    TO_WORKSPACE=1
elif [ $TO_WORKSPACE -eq 0 ]; then
    TO_WORKSPACE=10
fi

if [ $1 == "switch" ]; then
	swaymsg workspace number $TO_WORKSPACE
elif [ $1 == "move" ]; then
	swaymsg move container to workspace number $TO_WORKSPACE
elif [ $1 == "moveto" ]; then
	swaymsg move container to workspace number $TO_WORKSPACE, workspace number $TO_WORKSPACE
fi
