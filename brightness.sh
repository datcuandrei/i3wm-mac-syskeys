#!/bin/bash

#
# brightness.sh
#
# Copyright 2020 Andrei Datcu <@datcuandrei>
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


case "$1" in
	-max)
		cat /sys/class/backlight/intel_backlight/max_brightness
	;;
	-atm)
		cat /sys/class/backlight/intel_backlight/actual_brightness
	;;
	-inc)
		CURR=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
		ADD=20

		FIN=$(( CURR + ADD ))
		echo $FIN > /sys/class/backlight/intel_backlight/brightness
	;;
	-dec)
		CURR=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
		SUBT=20

		FIN=$(( CURR - SUBT))
		echo $FIN > /sys/class/backlight/intel_backlight/brightness
	;;
	*)
		echo $1 > /sys/class/backlight/intel_backlight/brightness
	;;
esac
