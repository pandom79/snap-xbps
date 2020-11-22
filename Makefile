# snap-xbps
# https://github.com/pandom79/snap-xbps
# Copyright (C) 2020 Domenico Panella
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
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

PKGNAME = snap-xbps
PREFIX ?= /usr

SHARE_DIR = $(DESTDIR)$(PREFIX)/share

.PHONY: install

install:
	@install -Dm755 script/* -t $(SHARE_DIR)/xbps.d/scripts/
	@install -Dm644 hooks/* -t $(SHARE_DIR)/xbps.d/hooks/
	@install -Dm644 LICENSE -t $(SHARE_DIR)/licenses/$(PKGNAME)/
	@install -Dm644 man8/* -t $(SHARE_DIR)/man/man8/
	@install -Dm644 README -t $(SHARE_DIR)/doc/$(PKGNAME)/
	@install -Dm644 extra/snap-xbps.conf.example -t $(DESTDIR)/etc/
	@install -Dm644 extra/root.conf.example -t $(DESTDIR)/etc/snap-xbps/
