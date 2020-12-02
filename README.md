**SYNOPSIS**

This is a set of xbps hooks and script that automatically causes snapper to
perform a pre and post snapshot before and after xbps transactions, similar to
how YaST does with OpenSuse. This provides a simple way to undo changes to a
system after a xbps transaction.

**INSTALLATION**

Install the "snap-xbps" package using xbps of which attach a xbps-src template :  
*(just an example, could be required change the checksum...)*

```
# Template file for 'snap-xbps'
pkgname=snap-xbps
version=1.0
revision=1
wrksrc="${pkgname}"
build_style=gnu-makefile
depends="bash snapper xbps btrfs-progs procps-ng rsync"
short_desc="Xbps hooks that use snapper to create pre/post btrfs snapshots"
maintainer="Domenico Panella <pandom79@gmail.com>"
license="GPL-2.0-or-later"
homepage="https://github.com/pandom79/snap-xbps"
distfiles="https://github.com/pandom79/${pkgname}/releases/download/${version}/${pkgname}-${version}.tar.gz"
checksum=d12a29284982719cb3a5aa5a50efbb690d2400d3ae22965c55d07f9ccdf5b29a

```

Alternatively download the latest release from
https://github.com/pandom79/snap-xbps/releases, and then
run "make install".

**DOCUMENTATION**

See snap-xbps(8) after installation.

**TROUBLESHOOTING**

After reviewing the man page, check the issues page and file a new issue if your
problem is not covered:

https://github.com/pandom79/snap-xbps/issues
