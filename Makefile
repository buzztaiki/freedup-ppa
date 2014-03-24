get:
	wget -N http://freedup.org/freedup-1.6-2-src.tar.bz2 -O freedup_1.6.2.orig.tar.bz2

deb:
	tar xf freedup_1.6.2.orig.tar.bz2
	cp -a debian freedup-1.6
	cd freedup-1.6 && dpkg-buildpackage -us -uc

deps:
	apt-get install fakeroot build-essential dpkg-dev devscripts
	apt-get install quilt debhelper dh-make
