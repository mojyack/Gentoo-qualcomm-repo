# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Server-side implementation of the QMI IMS Data service"
HOMEPAGE="https://gitlab.com/flamingradian/81voltd"
EGIT_REPO_URI="https://gitlab.com/flamingradian/81voltd.git"
EGIT_COMMIT="v$PV"

KEYWORDS="~arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND="${DEPEND}"

