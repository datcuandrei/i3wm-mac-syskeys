# i3wm-mac-syskeys v0.0.1
*proudly written using GNU nano

<b>Note that this only works with Macs running i3wm,but can be adapted to also work with other window managers.</b>

## How to install : 

- Download/Clone the repo 
- Go to the folder where you have downloaded/cloned the repo.If you decided to download the repo,you will extract the files from the downloaded archive.
- Open the terminal in the folder,or cd into it and run the setup.sh script.

This script will automatically create the configuration folder where the other scripts who do the job and move them to that folder.It will also patch the i3 config file.

- Reload i3(mod+Shift+C)(or your wm if you have patched it to work with your wm).

## Troubleshooting :
In case you get something that mentions `Permission denied.` it is most likely because the script doesn't have permission to write.
In order to solve this, you need to get permission to read and write those files,and you can do that by using `chmod` :
```bash
$ sudo chmod a+rw /sys/class/backlight/intel_backlight/brightness

$ sudo chmod a+rw /sys/class/leds/smc::kbd_backlight/brightness
```
## The idea behind using it with other window managers : 

If you can modify your wm's config file to add the key bindings found in the setup.sh file to execute the scripts,you are all set!

## You can also use it without running the setup.sh by using the scripts individually.

To run the scripts,simply open terminal and input : 
`sh <script>.sh <arg>` where :
- `<script>` = name of the script
- `<arg>` = what you want the script to do.

The following arguments are available:

1) `-max`(brightness/kbd) = max value for screen brightness / keyboard backlight brightness
2) `-atm`(brightness/kdb) = current value for screen brightness / keyboard backlight brightness
3) `-inc`(all) = increase the value
4) `-dec`(all) = decrease the value
5) `-mute`(vol) = toggles mute.

Copyright 2020 Andrei Datcu <@datcuandrei>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
MA 02110-1301, USA.
