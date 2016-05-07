#!/usr/bin/env bash
set -eux

curl -fsSL -o protobuf-2.6.1.tar.gz \
    "https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz"

tar xf protobuf-2.6.1.tar.gz
cd protobuf-2.6.1
./configure --enable-static --disable-shared &&
make
make install
