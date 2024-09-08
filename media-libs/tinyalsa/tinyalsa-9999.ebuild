# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Tiny library to interface with ALSA in the Linux kernel"
HOMEPAGE="https://github.com/tinyalsa/tinyalsa"
EGIT_REPO_URI="https://github.com/tinyalsa/tinyalsa.git"
EGIT_COMMIT="7f06b2f"

KEYWORDS="~arm64"
LICENSE="MIT"
SLOT="0"
IUSE="doc examples utils"
DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
        local emesonargs=(
                $(meson_feature doc docs)
                $(meson_feature examples)
                $(meson_feature utils)
        )
        meson_src_configure
}
