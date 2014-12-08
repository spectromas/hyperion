# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Sable and SableNC are carbon and black tone themes"
HOMEPAGE="http://www.noobslab.com"
SRC_URI="https://launchpad.net/~noobslab/+archive/ubuntu/themes/+files/sable-gtk_3.12.9%7Eutopic%7ENoobslab.com.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-themes/gtk-engines-murrine
		x11-themes/gnome-themes-standard"

RESTRICT="binchecks strip"

S="${WORKDIR}/sable-sablenc"

src_install() {
	insinto /usr/share/themes
	doins -r Sa*
}
