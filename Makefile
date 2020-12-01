/*
License: http://www.gnu.org/licenses/gpl.html GPL version 2 or higher
Copyright (C) 1994-1995, 1997, 1999-2020 Free Software Foundation, Inc.
*/

obj-m := myled.o

myled.ko: myled.c
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 modules


clean:
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 clean
