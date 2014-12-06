# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="a variety of dark themes"
HOMEPAGE="http://www.ravefinity.com"
SRC_URI="https://launchpad.net/~noobslab/+archive/ubuntu/themes/+files/ambiance-blackout-colors_14.04.1%7Eutopic%7ENoobsLab.com.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"

RDEPEND="x11-themes/gtk-engines-murrine"

RESTRICT="binchecks strip"

S="${WORKDIR}/ambiance-blackout-colors"


src_install() {
	exeinto "Ambiance-Blackout-Colors"
	insinto /usr/share/themes
	doins -r *

## need to remove the debian folder that is installed with it ##
}
