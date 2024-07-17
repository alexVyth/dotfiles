export ELECTRON_OZONE_PLATFORM_HINT=wayland
export XDG_CURRENT_DESKTOP=sway
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec sway --unsupported-gpu
fi
