################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="vulkan-tools"
PKG_VERSION="1.2.166"
PKG_ARCH="any"
PKG_LICENSE="Apache 2.0"
PKG_SITE="https://www.khronos.org"
PKG_URL="https://github.com/KhronosGroup/Vulkan-Tools/archive/v$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="Vulkan-*$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain cmake:host"
PKG_SECTION="graphics"
PKG_SHORTDESC="Vulkan Tools."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_TOOLCHAIN="cmake"
PKG_CMAKE_OPTS_TARGET="-DBUILD_WSI_XCB_SUPPORT=OFF \
		      -DBUILD_WSI_WAYLAND_SUPPORT=OFF \
		      -DBUILD_CUBE=OFF"

