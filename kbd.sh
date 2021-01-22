#!/bin/bash

#
# kbd.sh
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

getBacklight=$(ls /sys/class/leds | grep kbd_backlight)
backlight=/sys/class/leds/$getBacklight
CURR=$(cat $backlight/brightness)
VAL=20
case "$1" in
	-max)
		cat $backlight/max_brightness
	;;
	-atm)
		cat $backlight/brightness
	;;
	-inc)
		INC=$(( CURR + VAL ))
		echo $INC > "$backlight/brightness"
	;;
	-dec)
		DEC=$(( CURR - VAL ))
		echo $DEC > "$backlight/brightness"
	;;
	*)
		exit 1
	;;
esac
