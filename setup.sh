#!/bin/bash

#
# setup.sh
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


SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "Current path : $SCRIPTPATH"

echo "Creating dir..."
mkdir ~/.config/i3wm-mac-syskeys

echo "Moving scripts to ~/.config/i3wm-mac-syskeys"
mv $SCRIPTPATH/brightness.sh ~/.config/i3wm-mac-syskeys/brightness.sh
mv $SCRIPTPATH/kbd.sh ~/.config/i3wm-mac-syskeys/kbd.sh
mv $SCRIPTPATH/vol.sh ~/.config/i3wm-mac-syskeys/vol.sh

echo "Patching window manager config..."

echo "# i3wm-mac-syskeys  
# Visit github.com/datcuandrei/i3wm-mac-syskeys for more info.

# Screen Brightness Controls
bindsym XF86MonBrightnessUp exec "sh ~/.config/i3wm-mac-syskeys/brightness.sh -inc"
bindsym XF86MonBrightnessDown exec "sh ~/.config/i3wm-mac-syskeys/brightness.sh -dec"

# Keyboard Backlight Controls
bindsym XF86KbdBrightnessUp exec "sh ~/.config/i3wm-mac-syskeys/kbd.sh -inc"
bindsym XF86KbdBrightnessDown exec "sh ~/.config/i3wm-mac-syskeys/kbd.sh -dec"

# Volume Controls
bindsym XF86AudioRaiseVolume exec "sh ~/.config/i3wm-mac-syskeys/vol.sh -inc"
bindsym XF86AudioLowerVolume exec "sh ~/.config/i3wm-mac-syskeys/vol.sh -dec"
bindsym XF86AudioMute exec "sh ~/.config/i3wm-mac-syskeys/vol.sh -mute"
" >> ~/.config/i3/config

echo "Setup finished successfully!"
echo "Please reload your window manager for the patches to work."
