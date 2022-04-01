Volatile OS
===========

Volatile OS is a Linux distribution optimized to run from volatile memory.

Building
--------

Building Volatile OS ISO files is done using the archiso tool.

The following command, executed from the root directory of this project, will
build a Volatile OS ISO file in `out/`, using `work/` to store temporary files.

```sh
$ sudo mkarchiso -v -w work/ -o out/ archiso/
```

Resources
---------

* [archiso](https://gitlab.archlinux.org/archlinux/archiso) - used for building
  ISO images.

Copyright & License
-------------------

Copyright ©2022 Томас \<70m4c@70m4c.su\>.

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see <https://www.gnu.org/licenses/gpl>.

