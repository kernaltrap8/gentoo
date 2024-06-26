# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

MY_PN="${PN/PEAR-/}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Pure-PHP arbitrary precision integer arithmetic library"
HOMEPAGE="
	https://pear.php.net/package/Math_BigInteger
	http://phpseclib.sourceforge.net/documentation/math.html"
SRC_URI="http://download.pear.php.net/package/${MY_P}.tgz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~hppa ppc64 sparc x86"
IUSE=""
DEPEND=""
RDEPEND="dev-lang/php:*"

S="${WORKDIR}/${MY_P}"

src_install() {
	insinto /usr/share/php
	doins -r Math

	dodoc demo/{benchmark,demo}.php
}
