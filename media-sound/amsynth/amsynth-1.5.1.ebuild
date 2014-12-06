# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-sound/amsynth/amsynth-1.3.2.ebuild,v 1.3 2013/07/27 22:23:00 ago Exp $

EAPI=5

inherit autotools

# Doesn't apply any more
#MY_P=${P/ams/amS}

DESCRIPTION="Virtual analogue synthesizer."
HOMEPAGE="http://code.google.com/p/amsynth/"
SRC_URI="https://github.com/nixxcode/amsynth/releases/download/release-${PV}/${P}.tar.gz"
# https://github.com/nixxcode/amsynth/releases/download/release-1.5.1/amsynth-1.5.1.tar.gz

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="alsa dssi jack lash oss sndfile"

RDEPEND=">=dev-cpp/gtkmm-2.4
	sndfile? ( >=media-libs/libsndfile-1:= )
	alsa? (
		media-libs/alsa-lib:=
		media-sound/alsa-utils
		)
	dssi? (
		media-libs/dssi:=
		media-libs/liblo:=
		>=x11-libs/gtk+-2.20:2
		)
	jack? ( media-sound/jack-audio-connection-kit )
	lash? ( media-sound/lash )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	oss? ( virtual/os-headers )"

DOCS="AUTHORS README"

S=${WORKDIR}/${P}

src_prepare() {
	eautoreconf
}

src_configure() {
	econf \
		CFLAGS="" \
		CXXFLAGS="${CXXFLAGS}" \
		$(use_with oss) \
		$(use_with alsa) \
		$(use_with jack) \
		$(use_with lash) \
		$(use_with sndfile) \
		$(use_with dssi)
}
