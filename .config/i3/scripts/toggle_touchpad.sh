dev=$(xinput list | grep -i touchpad | cut -d '=' -f 2 | cut -d '[' -f 1)
status=$(xinput list-props $dev | grep -i "device enabled" | cut -d ":" -f 2)
echo $status
if [ $((status)) -eq $((1)) ]
then
	xinput disable $dev
else
	xinput enable $dev
fi
