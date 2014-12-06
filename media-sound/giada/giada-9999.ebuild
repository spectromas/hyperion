# Distributed under the terms of the GNU General Public License v2

EAPI=4
inherit eutils git-r3

DESCRIPTION=""
HOMEPAGE="http://www.giadamusic.com/"
EGIT_REPO_URI="https://github.com/monocasual/giada"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="media-libs/libsndfile
	>=media-libs/libsamplerate-0.1.8
	media-libs/rtmidi
	x11-libs/fltk
	x11-libs/libXpm"
RDEPEND="${DEPEND}"

#src_prepare() {
#	epatch "${FILESDIR}"/${PN}-0.5.4-flags.patch
#	epatch "${FILESDIR}"/${PN}-0.5.8-configure.patch
#	eautoreconf
#}

src_configure() {
	append-cppflags -I/usr/include/fltk
	append-ldflags -L/usr/$(get_libdir)/fltk

	econf \
		--target=linux
}

src_compile() {
	emake
	emake libs
}

	src_install() {
	    emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr/" MANPREFIX="${PREFIX}/usr/share/man/" install
}

