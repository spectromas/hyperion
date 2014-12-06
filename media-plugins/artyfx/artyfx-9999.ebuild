# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils git-r3

DESCRIPTION="Arty FX is an LV2 plugin bundle of artistic “RT” effects."
HOMEPAGE="http://openavproductions.com/artyfx/"
EGIT_REPO_URI="git://github.com/harryhaaren/openAV-ArtyFX.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="media-libs/lv2
	x11-libs/cairo
	dev-cpp/cairomm
	x11-libs/ntk"
RDEPEND=""

src_prepare() {
	epatch_user
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr/" MANPREFIX="${PREFIX}/usr/share/man/" install
}
