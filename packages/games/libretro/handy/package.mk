# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2022-present AmberELEC (https://github.com/AmberELEC)

PKG_NAME="handy"
PKG_VERSION="4e9e072796e5552a9d57f6ab83b3f85f27b17fb6"
PKG_SHA256="7c21fe578d1ba4271ee07530552b3cfb7deb905147edc3fb7d8c33cf5f45ec4c"
PKG_LICENSE="Zlib"
PKG_SITE="https://github.com/libretro/libretro-handy"
PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Handy is an Atari Lynx Emulator for Windows 95/98/NT/2000. Handy was the original name of the Lynx project that was started at Epyx and then finished by Atari."
PKG_TOOLCHAIN="make"

if [ ${ARCH} = "aarch64" ]; then
  PKG_MAKE_OPTS_TARGET=" platform=emuelec"
else
  PKG_MAKE_OPTS_TARGET=" platform=classic_armv8_a35"
fi

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp handy_libretro.so ${INSTALL}/usr/lib/libretro/
}
