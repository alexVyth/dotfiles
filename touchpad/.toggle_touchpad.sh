#! /bin/zsh

device="SynPS/2 Synaptics TouchPad"
enabled=$(xinput --list-props "$device" | grep "Device Enabled" | awk '{print $NF}')

if [[ "$enabled" == "1" ]]; then
	xinput --disable "$device"
	xinput set-prop "$device" "libinput Tapping Enabled" 1
	xinput set-prop "$device" "libinput Click Method Enabled" 1 0
else
	xinput --enable "$device"
	xinput set-prop "$device" "libinput Tapping Enabled" 1
	xinput set-prop "$device" "libinput Click Method Enabled" 1 0
fi
