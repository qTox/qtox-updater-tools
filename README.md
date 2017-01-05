# qTox updater tools [![Build Status](https://travis-ci.org/qTox/qtox-updater-tools.svg?branch=master)](https://travis-ci.org/qTox/qtox-updater-tools)

Tools for releasing qTox updates.


# Compiling Rust tools

Tools require [libsodium] and [Rust].

To build a debug version: `cargo build`

To build a release version: `cargo build --release`

This will produce binary in `target/debug` or `target/release` directory
respectively.


# License

Licensed under GPLv3+. For details, see [COPYING](/COPYING).


[libsodium]: https://github.com/jedisct1/libsodium
[Rust]: https://www.rust-lang.org/
