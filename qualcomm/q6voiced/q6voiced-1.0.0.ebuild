# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="customized q6voiced"
HOMEPAGE="https://github.com/mojyack/q6voiced"
EGIT_REPO_URI="https://github.com/mojyack/q6voiced.git"
EGIT_COMMIT="v$PV"

KEYWORDS="~arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="sys-apps/dbus media-libs/tinyalsa"
RDEPEND="${DEPEND}"
