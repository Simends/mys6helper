##
# My s6 helper
#
# @file
# @version 0.1

DESTPREFIX=/usr/local
SRC = s6ctl

install:
	mkdir -p ${DESTPREFIX}/bin
	cp -f ${SRC} ${DESTPREFIX}/bin
	chmod 755 ${DESTPREFIX}/bin/s6ctl
	mkdir -p ${DESTPREFIX}/man/man1
	cp -f doc/s6ctl.1 ${DESTPREFIX}/man/man1
	chmod 644 ${DESTPREFIX}/man/man1/s6ctl.1
	cp -r services/* /etc/s6/sv/

uninstall:
	rm -f ${DESTPREFIX}/bin/s6ctl
	rm -f ${DESTPREFIX}/man/man1/s6ctl.1

# end
