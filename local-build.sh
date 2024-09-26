#!/usr/bin/env bash

BRANCH="test"

rm -f tech.feliciano.pocket-casts.flatpak
rm -rf build-dir ; mkdir build-dir
rm -rf build-repo ; mkdir build-repo

flatpak-builder --ccache --force-clean --default-branch="$BRANCH" build-dir tech.feliciano.pocket-casts.yml --repo=build-repo
flatpak build-bundle build-repo tech.feliciano.pocket-casts.flatpak tech.feliciano.pocket-casts "$BRANCH"
