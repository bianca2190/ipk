#!/bin/bash

svn co https://github.com/xiaorouji/openwrt-passwall/trunk/sing-box package/sing-box
svn co https://github.com/immortalwrt/homeproxy/trunk package/luci-app-homeproxy

./scripts/feeds update -a
./scripts/feeds install -a
