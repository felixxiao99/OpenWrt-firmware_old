#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
# echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default


#git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff
#git clone https://github.com/project-openwrt/openwrt-filebrowser.git package/lean/openwrt-filebrowser
#git clone https://github.com/destan19/OpenAppFilter.git package/lean/OpenAppFilter
