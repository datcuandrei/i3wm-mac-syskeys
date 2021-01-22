#!/bin/bash

#
# brightness.sh
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

for i in /sys/class/backlight/**
do
       	if [[ "$i" == *"acpi"* ]]; then
       		continue
       	fi
	CURR=$(cat $i/actual_brightness)
	VAL=20
 	case "$1" in
		-max)
			cat $i/max_brightness
		;;
		-atm)
			cat $i/actual_brightness
		;;
		-inc)
			INC=$(( CURR + VAL ))
			echo $INC > "$i/brightness"
		;;
		-dec)
			DEC=$(( CURR - VAL ))
			echo $DEC > "$i/brightness"
		;;
		*)
			exit 1
		;;
	esac
done
