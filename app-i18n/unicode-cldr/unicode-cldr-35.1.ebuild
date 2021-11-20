# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

DESCRIPTION="Unicode Common Locale Data Repository"
HOMEPAGE="http://cldr.unicode.org/"
SRC_URI="https://unicode.org/Public/${PN#*-}/${PV}/${PN#*-}-common-${PV}.zip -> ${PN}-common-${PV}.zip"

LICENSE="unicode"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=""
BDEPEND="app-arch/unzip"
S="${WORKDIR}"

src_install() {
	insinto /usr/share/${PN/-//}
	doins -r common
}
