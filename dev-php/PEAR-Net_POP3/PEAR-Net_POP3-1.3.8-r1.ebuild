# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit php-pear-r2

DESCRIPTION="Provides a POP3 class to access POP3 server"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~hppa ppc64 ~sparc x86"
IUSE="+sasl"
RDEPEND=">=dev-php/PEAR-Net_Socket-1.0.6-r1
	sasl? ( >=dev-php/PEAR-Auth_SASL-1.0.2 )"
HTML_DOCS=( docs/examples/Net_POP3_example.php )
