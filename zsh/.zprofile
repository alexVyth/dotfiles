export ELECTRON_OZONE_PLATFORM_HINT=wayland
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec sway
fi
