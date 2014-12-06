# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
inherit autotools-utils

DESCRIPTION="A set of open source instruments and effects for digital audio workstations. Version from Kxstudio which include DSSI and ladspa formats, as well as lv2."
HOMEPAGE="http://calf.sf.net/"
SRC_URI="https://launchpad.net/~kxstudio-debian/+archive/ubuntu/plugins/+files/${PN}_${PV}.orig.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="dssi ladspa lash lv2 sse static-libs"

RDEPEND="dev-libs/expat
	dev-libs/glib:2
	gnome-base/libglade:2.0
	media-sound/fluidsynth
	media-sound/jack-audio-connection-kit
	sci-libs/fftw:3.0
	x11-libs/gtk+:2
	lash? ( virtual/liblash )
	lv2? ( >=media-libs/lv2-1.0.0 )
	ladspa? ( >=media-libs/ladspa-sdk-1.12 )
    dssi? (
        media-libs/dssi:=
        media-libs/liblo:=
        >=x11-libs/gtk+-2.20:2
        )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

RESTRICT="mirror"

DOCS=(AUTHORS ChangeLog NEWS README TODO)

AUTOTOOLS_AUTORECONF=1

S=${WORKDIR}/calf

src_configure() {
	myeconfargs=(
		$(use_with lv2)
		$(use lv2 && echo "--with-lv2-dir=/usr/$(get_libdir)/lv2")
		$(use_with ladspa)
		$(use ladspa && echo "--with-ladspa-dir=/usr/$(get_libdir)/ladspa")
		$(use_with dssi)
		$(use dssi && echo "--with-dssi-dir=/usr/$(get_libdir)/dssi")
		$(use_enable sse)
	)
	autotools-utils_src_configure
}
