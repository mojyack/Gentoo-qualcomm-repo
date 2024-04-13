# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Qualcomm Protection Domain mapper"
HOMEPAGE="https://github.com/linux-msm/pd-mapper"
EGIT_REPO_URI="https://github.com/linux-msm/pd-mapper.git"

KEYWORDS="~arm64"
LICENSE="BSD"
SLOT="0"
IUSE="systemd"
DEPEND="qualcomm/qrtr app-arch/xz-utils"
RDEPEND="${DEPEND}"

src_prepare() {
	if ! use systemd; then
		PATCHES+=( "${FILESDIR}/no-systemd.patch" )
	fi
	default
}

src_install() {
	emake prefix="/usr" install
}
