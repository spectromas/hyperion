# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Official Numix GTK theme - Antergos edition"
HOMEPAGE="http://antergos.com/"
SRC_URI="http://storage.antergos.com/numix/numix-frost.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-themes/gtk-engines-murrine"

RESTRICT="binchecks strip"

S="${WORKDIR}/numix-frost/"

src_install() {
	insinto /usr/share/themes
	doins -r *
}
