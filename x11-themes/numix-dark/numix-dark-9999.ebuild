# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3

DESCRIPTION="A dark recolored version of Numix, a modern flat theme."
HOMEPAGE="https://github.com/Steef435/Numix-dark"
EGIT_REPO_URI="git://github.com/Steef435/Numix-dark"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="x11-themes/gtk-engines-murrine"

RESTRICT="binchecks strip"

src_install() {
	insinto /usr/share/themes/${PN}
	doins -r *
}
