#!/bin/bash

pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd

svn co https://github.com/xiaorouji/openwrt-passwall/trunk/sing-box package/sing-box
svn co https://github.com/immortalwrt/homeproxy/trunk package/homeproxy

./scripts/feeds update -a
./scripts/feeds install -a
