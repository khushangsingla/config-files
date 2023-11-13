dev=$(xinput list | grep -i touchpad | cut -d '=' -f 2 | cut -d '[' -f 1)
status=$(xinput list-props $dev | grep -i "device enabled" | cut -d ":" -f 2)
echo $status
if [ $((status)) -eq $((1)) ]
then
	xinput disable $dev
	notify-send -t 2000 Touchpad off
else
	xinput enable $dev
	notify-send -t 2000 Touchpad on
fi
