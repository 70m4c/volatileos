Volatile OS
===========

Volatile OS is a Linux distribution optimized to run from volatile memory.

Building
--------

Building Volatile OS ISO files is done using the
[archiso](https://gitlab.archlinux.org/archlinux/archiso) tool, either locally
or within an OCI container.

### Build Using `archiso` Locally

The following commands, executed from the root directory of this project, will
build a Volatile OS ISO file in `out/`, using `work/` to store temporary files.

```sh
$ mkdir work/ out/
$ sudo mkarchiso -v -w work/ -o out/ archiso/
```

### Build Using an OCI Container

The following commands will build a Volatile OS ISO file in `ISODIR`.

```sh
$ ISODIR="/path/to/output"
$ docker run --privileged --tty --volume ${ISODIR}:/out --rm archlinux bash -c "pacman --sync --refresh --sysupgrade --noconfirm git archiso && git clone --depth 1 https://github.com/70m4c/volatileos.git /volatileos && cp /volatileos/archiso/airootfs/etc/pacman.d/volatileos-mirrorlist /etc/pacman.d/volatileos-mirrorlist && mkarchiso -v -w /tmp -o /out /volatileos/archiso"
```

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

