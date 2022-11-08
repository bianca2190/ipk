#!/bin/bash

svn co https://github.com/xiaorouji/openwrt-passwall/trunk/sing-box package/sing-box

./scripts/feeds update -a
./scripts/feeds install -a

# Manual
git clone https://github.com/kenzok8/jell.git
cp -rf jell/homeproxy* package/
rm -rf jell/
