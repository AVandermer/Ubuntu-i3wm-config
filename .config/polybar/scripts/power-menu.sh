#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme $HOME/.config/polybar/scripts/color.rasi"

# Options
shutdown="󰐥  Power Off"
reboot="󰜉 Reboot"
lock="󰤁 Lock Screen"
suspend="󰤄 Suspend"
logout="󰿅 Logout"

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"
chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"



case $chosen in
    $shutdown)
	systemctl poweroff
        ;;
    $reboot)
	systemctl reboot
        ;;
    $lock)
        betterlockscreen -l &
        ;;
    $suspend)
        amixer set Master mute
	betterlockscreen -l & 
	sleep 0.5
        systemctl suspend
        ;;
    $logout)
        i3-msg exit
        ;;
esac

