#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2-x86_64.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.5.5.1/g' package/base-files/files/bin/config_generate
# sed -i 's/192.168/10.5/g' package/base-files/files/bin/config_generate

# Modify version info
sed -i "s/\(DISTRIB_REVISION='\(\w\|\.\)\+\)'/\1 Compiled by xiaofei'/" package/lean/default-settings/files/zzz-default-settings

sed -i 's/replace_music_source.rmempty/-- replace_music_source.rmempty/g' package/lean/luci-app-unblockmusic/luasrc/model/cbi/unblockmusic/unblockmusic.lua

#5.10->5.4
sed -i 's/5.10/5.4/g' target/linux/x86/Makefile
