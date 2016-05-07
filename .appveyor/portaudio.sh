#!/usr/bin/env bash
set -eux

curl -fsSL -o portaudio.tar.gz \
    "http://www.portaudio.com/archives/pa_stable_v19_20140130.tgz"

tar xf portaudio.tar.gz
cd portaudio
./configure --enable-static --disable-shared &&
make
make install
