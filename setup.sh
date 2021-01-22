#!/bin/bash

#
# setup.sh
#
# Copyright 2020-2021 Andrei Datcu <@datcuandrei>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.
#
#
#


SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo ""
echo ""
echo "This script will install only i3wm-xfkeys,without it's dependencies."
echo "The only requirement is playerctl,which can be easily downloaded"
echo "and installed by most package managers.Playerctl is used for media controls"
echo "like Play/Pause,Skip forward,Skip backward.Without it,these button will"
echo "not work.This script will not ask you for root privileges.If it does,it"
echo "has been modified externally.In that case,do not run it,and first check"
echo "it's source code!"
echo ""
echo "Total installation size :		3.3K"
echo ""
read -r -p ":: Proceed with installation? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
	echo "Current path : $SCRIPTPATH"
	echo ""
	echo ":: Installing..."
	echo "(1/3) Creating dir..."
	mkdir ~/.config/i3wm-xfkeys

	echo "(2/3)Moving scripts to ~/.config/i3wm-xfkeys"
	cp -avr $SCRIPTPATH/brightness.sh ~/.config/i3wm-xfkeys/brightness.sh
	cp -avr $SCRIPTPATH/kbd.sh ~/.config/i3wm-xfkeys/kbd.sh
	cp -avr $SCRIPTPATH/vol.sh ~/.config/i3wm-xfkeys/vol.sh
	
	echo "(3/3)Patching window manager config..."

	echo "# i3wm-xfkeys  
# Visit github.com/datcuandrei/i3wm-xfkeys for more info.

# Screen Brightness Controls
bindsym XF86MonBrightnessUp exec sh /home/datcuandrei/.config/i3wm-xfkeys/brightness.sh -inc
bindsym XF86MonBrightnessDown exec sh /home/datcuandrei/.config/i3wm-xfkeys/brightness.sh -dec

# Keyboard Backlight Controls
bindsym XF86KbdBrightnessUp exec sh /home/datcuandrei/.config/i3wm-xfkeys/kbd.sh -inc
bindsym XF86KbdBrightnessDown exec sh /home/datcuandrei/.config/i3wm-xfkeys/kbd.sh -dec

# Volume Controls
bindsym XF86AudioRaiseVolume exec sh /home/datcuandrei/.config/i3wm-xfkeys/vol.sh -inc
bindsym XF86AudioLowerVolume exec sh /home/datcuandrei/.config/i3wm-xfkeys/vol.sh -dec
bindsym XF86AudioMute exec sh /home/datcuandrei/.config/i3wm-xfkeys/vol.sh -mute

# Media Controls
bindsym XF86AudioPlay exec playerctl play-pause
bindsym XF86AudioPrev exec playerctl previous
bindsym XF86AudioNext exec playerctl next" >> ~/.config/i3/config
	echo ""
	echo ":: Setup finished successfully!"
	echo ":: Please reload your window manager for the patches to work."
	;;
    *)
 	exit 1
 	;;
esac
