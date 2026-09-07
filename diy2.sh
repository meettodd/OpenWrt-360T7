#!/bin/bash
###
 # @Author: jia
 # @Date: 2026-09-01 21:00:00
 # @LastEditTime: 2026-09-01 21:00:00
 # @LastEditors: jia
 # @Description: 
 # @FilePath: /OpenWrt-360T7/diy2.sh
 # 自定义内容
### 
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i "s/hostname='ImmortalWrt'/hostname='360T7'/g" package/base-files/files/bin/config_generate
sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='OpenWrt By jia $(date +"%Y%m%d")'/g" package/base-files/files/etc/openwrt_release
