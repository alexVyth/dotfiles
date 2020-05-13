$HOME/.monicarc   #monitor calibration
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

numlockx &
exec bspwm
