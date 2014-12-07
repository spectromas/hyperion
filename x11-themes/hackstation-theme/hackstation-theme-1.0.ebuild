# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Hackstation is theme pack released for Linux desktop, it contains HackStation theme which is based on boje-red and Ghost-Flat icons which are made using ACYL"
HOMEPAGE="http://www.noobslab.com"
SRC_URI="https://launchpad.net/~noobslab/+archive/ubuntu/themes/+files/hackstation-theme_1.0%7Eutopic%7ENoobslab.com.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-themes/gtk-engines-murrine"

RESTRICT="binchecks strip"

S="${WORKDIR}/hackstation-theme"

src_install() {
	insinto /usr/share/themes
	doins -r Ha*
}
