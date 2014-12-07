# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Ambiance-Dark is modified theme version of original ambiance."
HOMEPAGE="http://www.noobslab.vom"
SRC_URI="https://launchpad.net/~noobslab/+archive/ubuntu/themes/+files/ambiance-dark_1.5%7Etrusty%7ENoobsLab.com.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-themes/gtk-engines-murrine"

RESTRICT="binchecks strip"

S="${WORKDIR}/ambiance-dark"

src_install() {
	insinto /usr/share/themes
	doins -r Amb*
}
