#!/bin/bash
# diy-part1.sh

cd openwrt || exit 1

# 替换 feeds 源
cat > feeds.conf.default <<EOF
src-git packages https://github.com/openwrt/packages.git
src-git luci https://github.com/openwrt/luci.git
src-git routing https://github.com/openwrt/routing.git
src-git telephony https://github.com/openwrt/telephony.git
# 添加第三方源（示例）
# src-git kenzo https://github.com/kenzok8/openwrt-packages.git
EOF

echo "✅ feeds.conf.default updated"
