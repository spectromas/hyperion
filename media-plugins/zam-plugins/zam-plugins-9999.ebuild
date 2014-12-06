# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils git-r3

HOMEPAGE="http://www.zamaudio.com/?p=976"
EGIT_REPO_URI="git://github.com/zamaudio/zam-plugins.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND=""

DOCS=( README.md ChangeLog)

src_prepare() {
	epatch_user
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr/" MANPREFIX="${PREFIX}/usr/share/man/" install
}
