# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Ambiance-Dark is modified theme version of original ambiance."
HOMEPAGE="http://www.noobslab.vom"
SRC_URI="https://launchpad.net/~noobslab/+archive/ubuntu/themes/+files/ambiance-dark-red_1.0%7Eutopic%7ENoobsLab.com.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-themes/gtk-engines-murrine"

RESTRICT="binchecks strip"

S="${WORKDIR}/Ambiance-Dark-Red"

src_install() {
	insinto /usr/share/themes
	doins -r Amb*
}
