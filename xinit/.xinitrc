$HOME/.monicarc   #monitor calibration
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xrandr --dpi 141
numlockx &
exec bspwm
