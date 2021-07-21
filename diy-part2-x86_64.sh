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
sed -i 's/192.168/10.5/g' package/base-files/files/bin/config_generate

# Modify version info
sed -i "s/\(DISTRIB_REVISION='\(\w\|\.\)\+\)'/\1 Compiled by xiaofei'/" package/lean/default-settings/files/zzz-default-settings
