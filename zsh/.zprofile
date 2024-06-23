export BATTERY="$(ls /sys/class/power_supply/ | grep -E '^BAT[0-9]+')"

if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec sway
fi
