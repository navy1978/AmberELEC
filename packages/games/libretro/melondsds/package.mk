# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2024-present AmberELEC (https://github.com/AmberELEC)

PKG_NAME="melondsds"
PKG_VERSION="55b7e89a9b8ce1688a9eeb8466d8da5e747f85b9"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/JesseTG/melonds-ds"
PKG_URL="${PKG_SITE}.git"
PKG_GIT_CLONE_BRANCH="dev"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="MelonDS - Nintendo DS emulator for libretro"
PKG_TOOLCHAIN="cmake-make"

PKG_CMAKE_OPTS_TARGET=" -DCMAKE_BUILD_TYPE=Release \
                        -DCMAKE_RULE_MESSAGES=OFF \
                        -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
                        -DENABLE_OPENGL=OFF"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp ${PKG_BUILD}/.${TARGET_NAME}/src/libretro/melondsds_libretro.so ${INSTALL}/usr/lib/libretro/
}
