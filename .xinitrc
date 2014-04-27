while true; do
	xsetroot -name "$(acpi -b | awk 'sub(/,/,"") {print $3, $4}') | $( date +"%R" )"
	sleep 1m
done &
feh --bg-center /home/adina/.wall.png &
trayer --edge top --align right --margin 160 --widthtype request --height 16 --transparent true --alpha 255 &
(sleep 3 && nm-applet --sm-disable) &
xbindkeys &
exec dwm
