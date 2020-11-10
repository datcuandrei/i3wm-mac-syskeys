i3wm-mac-syskeys v0.0.1

Note that this only works with Macs running,but can be adapted to also work with other window managers.

How to install : 

- Download/Clone the repo 
- Go to the folder where you have downloaded/cloned the repo.If you decided to download the repo,you will extract the files from the downloaded archive.
- Open the terminal in the folder,or cd into it and run the setup.sh script.

This script will automatically create the configuration folder where the other scripts who do the job and move them to that folder.It will also patch the i3 config file.

- Reload i3(mod+Shift+C)(or your wm if you have patched it to work with your wm).

The idea behind using it with other window managers : 

If you can modify your wm's config file to add the key bindings found in the setup.sh file to execute the scripts,you are all set!

Legal stuff

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
