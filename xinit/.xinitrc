[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Here Xfce is kept as default
session=${1:-i3}

case $session in
    i3                ) exec i3;;
    bspwm               ) exec bspwm;;
    *                 ) exec $1;;
esac

numlockx &
# exec i3
