device=`xinput list |grep 'Travel Keyboard'|grep pointer | sed 's/.*id=//g' |awk '{print $1}'`

echo $device
xinput --set-prop $device "Device Accel Profile" "7"
xinput --set-prop $device "Evdev Wheel Emulation" "2"
xinput --set-prop $device "Evdev Wheel Emulation Button" "2"
xinput --set-prop $device "Evdev Wheel Emulation Axes"   6 7 4 5 

xmodmap -e "keycode 67 = Escape"
