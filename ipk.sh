#!/bin/bash

git clone https://github.com/xiaorouji/openwrt-passwall.git
git clone https://github.com/immortalwrt/homeproxy.git
cp -rf openwrt-passwall/sing-box package/
cp -rf homeproxy package/
rm -rf openwrt-passwall/ homeproxy/

./scripts/feeds update -a
./scripts/feeds install -a
