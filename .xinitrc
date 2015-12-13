while true; do
	xsetroot -name "$(acpi -b | awk 'sub(/,/,"") {print $3, $4}') | $( date +"%R" )"
	sleep 1m
done &
feh --bg-center /home/adina/.wall.png &
(sleep 3 && nm-applet --sm-disable) &
xbindkeys &
wmname LG3D &
exec dwm
