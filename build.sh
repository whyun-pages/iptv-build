#!/bin/bash
if [ ! -d "iptv-sources" ]; then
  git clone https://github.com/HerbertHe/iptv-sources.git
fi
cd iptv-sources
git pull
yarn install
yarn m3u