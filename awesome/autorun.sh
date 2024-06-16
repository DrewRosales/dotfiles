#!/usr/bin/env bash

function run {
	if ! pgrep -f $1; then
		$@ &
	fi
}

run /usr/lib/polkit-1/polkit-agent-helper-1
run greenclip daemon
run picom --config $HOME/.config/picom/picom.conf
if ! pgrep -f volctl; then volctl; fi
# run `bash -c '[[ ! -z "$LAPTOP" ]] && xinput set-prop 19 325 1.0'`
