#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2-r2s.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.9.9.2/g' package/base-files/files/bin/config_generate
# sed -i 's/192.168/10.9/g' package/base-files/files/bin/config_generate

# Modify version info
sed -i "s/\(DISTRIB_REVISION='\(\w\|\.\)\+\)'/\1 Compiled by xiaofei'/" package/lean/default-settings/files/zzz-default-settings

sed -i 's/replace_music_source.rmempty/-- replace_music_source.rmempty/g' feeds/luci/applications/luci-app-unblockmusic/luasrc/model/cbi/unblockmusic/unblockmusic.lua

# swap wan and lan for NanoPi R2S
#sed -i "s/ucidef_set_interfaces_lan_wan 'eth1' 'eth0'/ucidef_set_interfaces_lan_wan 'eth0' 'eth1'/g" target/linux/rockchip/armv8/base-files/etc/board.d/02_network


# 5.4->5/10
sed -i 's/5.15/5.19/g' target/linux/x86/Makefile
