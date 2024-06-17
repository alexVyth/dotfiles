export BATTERY="$(ls /sys/class/power_supply/ | grep -E '^BAT[0-9]+')"

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi
