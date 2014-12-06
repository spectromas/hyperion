# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

IUSE=""
RESTRICT="nostrip fetch"

DESCRIPTION="Steinberg VST Plug-Ins SDK 2.4"
HOMEPAGE="http://ygrabit.steinberg.de/~ygrabit/public_html/index.html"
SRC_URI="x86? ( vstsdk2_4_rev2.zip )"
LICENSE="STEINBERG SOFT- UND HARDWARE GMBH"

SLOT="2.4"
KEYWORDS="~x86"
DEPEND=""

VST_BASE="/opt/vstsdk2.4"

pkg_nofetch() {
	einfo "Please go to ${HOMEPAGE},"
	einfo "download the appropriate sdk zip archive for win32"
	einfo "(${A})"
	einfo "and place it in ${DISTDIR}"
	einfo " "
	ewarn "YOU MUST AGREE TO THE LICENSE TERMS LISTED AT THE"
	ewarn "STEINBERG HOMEPAGE"
}

src_install() {
	dodir ${VST_BASE}
	chmod -R g-w,o-w ${WORKDIR}/vstsdk2.4
	cp -R ${WORKDIR}/vstsdk2.4/* ${D}/${VST_BASE}
}

pkg_postinst() {
	echo
	einfo "Finished installing Steinberg VST Plug-Ins SDK 2.4 into"
	einfo "${VST_BASE}"
	einfo ""
	einfo "PLEASE READ THE LICENSE IN"
	einfo "${VST_BASE}/doc/VST Licensing Agreement.rtf"
}
