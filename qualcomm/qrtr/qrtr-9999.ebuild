# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Userspace reference for net/qrtr in the Linux kernel"
HOMEPAGE="https://github.com/linux-msm/qrtr"
EGIT_REPO_URI="https://github.com/linux-msm/qrtr.git"

KEYWORDS="~arm64"
LICENSE="BSD"
SLOT="0"
IUSE="systemd"
DEPEND="systemd? ( sys-apps/systemd )"
RDEPEND=""

src_prepare() {
	if ! use systemd; then
		PATCHES+=( "${FILESDIR}/no-systemd.patch" )
	fi
	default
}

