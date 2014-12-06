# Distributed under the terms of the GNU General Public License v2

EAPI=4
inherit eutils git-r3

DESCRIPTION="Carla is a fully-featured audio plugin host, with support for many audio drivers and plugin formats."
HOMEPAGE="http://kxstudio.sourceforge.net/Applications:Carla"
EGIT_REPO_URI="https://github.com/falkTX/Carla"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-libs/liblo
		dev-python/PyQt4
		dev-qt/qtcore"
RDEPEND="${DEPEND}"

DOCS=( README.md ReleaseNotes)

src_prepare() {
	epatch_user
}

	src_install() {
	    emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr/" MANPREFIX="${PREFIX}/usr/share/man/" install
}

