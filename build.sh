#!/bin/bash
if [ ! -d "iptv-sources" ]; then
  git clone https://github.com/HerbertHe/iptv-sources.git --depth 1
fi
cd iptv-sources
corepack enable
corepack prepare yarn@1.22.19 --activate
yarn install
yarn build
yarn m3u
cp -f index.html iptv-sources/m3u/