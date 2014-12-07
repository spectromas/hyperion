# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Polar Night theme is a dark variant of flatts theme"
HOMEPAGE="http://www.noobslab.com"
SRC_URI="https://launchpad.net/~noobslab/+archive/ubuntu/themes/+files/polar-night-gtk_0.1%7Eutopic%7ENoobslab.com.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-themes/gtk-engines-murrine"

RESTRICT="binchecks strip"

S="${WORKDIR}/polar-night"

src_install() {
	insinto /usr/share/themes
	doins -r po*
}
