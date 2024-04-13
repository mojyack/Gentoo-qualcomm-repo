# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="ALSA ucm configuration files for sdm845 phones"
HOMEPAGE="https://alsa-project.org/wiki/Main_Page"
EGIT_REPO_URI="https://gitlab.com/sdm845-mainline/alsa-ucm-conf.git"

KEYWORDS="~arm64"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~loong ~m68k ~mips ~ppc ~ppc64 ~riscv ~sparc ~x86"

RDEPEND="!<media-libs/alsa-lib-1.2.1"
DEPEND="${RDEPEND}"

src_install() {
	insinto /usr/share/alsa
	doins -r ucm{,2}
}
