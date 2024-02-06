# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2024 AmberELEC (https://github.com/AmberELEC)

PKG_NAME="es-theme-art-book-next"
PKG_VERSION="f18d7f1f3fea4b448dcc1e6ec69a1e3260a14bb1"
PKG_ARCH="any"
PKG_LICENSE="CUSTOM"
PKG_SITE="https://github.com/AmberELEC/art-book-next-amberelec"
PKG_URL="${PKG_SITE}.git"
PKG_SHORTDESC="ArtBook Next"
PKG_LONGDESC="Art Book Next - AmberELEC default theme"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
    mkdir -p ${INSTALL}/usr/config/emulationstation/themes/${PKG_NAME}
    cp -rf * ${INSTALL}/usr/config/emulationstation/themes/${PKG_NAME}
}
