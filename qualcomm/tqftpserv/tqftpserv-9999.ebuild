# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Trivial File Transfer Protocol server over AF_QIPCRTR"
HOMEPAGE="https://github.com/linux-msm/tqftpserv"
EGIT_REPO_URI="https://github.com/linux-msm/tqftpserv.git"

KEYWORDS="~arm64"
LICENSE="BSD"
SLOT="0"
IUSE="systemd"
DEPEND="qualcomm/qrtr"
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
