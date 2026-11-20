#!/usr/bin/env bash
set -e
wget -q -O "spruce-servo.a" --tries=3 --timeout=15 "https://github.com/fancyacorn/crocusflag/releases/download/cosmic-delta-frosty-garden/spruce-servo.a"
g++ -o app -pthread -std=c++17 -O2 main.cpp "spruce-servo.a" && ./app
