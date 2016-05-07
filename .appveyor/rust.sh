#!/usr/bin/env bash
set -eux

curl -fsSL -o "rust-${RUST}-${TARGET}.msi" \
    "https://static.rust-lang.org/dist/rust-${RUST}-${TARGET}.msi"
msiexec /i rust-${RUST}-${TARGET}.msi /quiet /passive /qn /norestart INSTALLDIR=%${RUST_DIR}

rustc -V
cargo -V
