#!/bin/bash

# OrangeFox branch to build for A14
export FOX_BRANCH="fox_14.1"

# Use LOS device tree for A14
export DT_LINK="https://github.com/LineageOS/android_device_xiaomi_lisa.git -b lineage-21"

# Device identifiers
export DEVICE="lisa"
export OEM="xiaomi"

# lisa is Virtual A/B → no dedicated recovery partition
export TARGET="bootimage"

# Output ZIP wildcard (used during upload)
export OUTPUT="OrangeFox*.zip"

# Kernel and vendor repos (A14 LineageOS 21)
DEPS=(
    "https://github.com/LineageOS/android_kernel_xiaomi_lisa.git kernel"
    "https://github.com/LineageOS/android_vendor_xiaomi_lisa.git vendor"
)

# Optional maintainer info (name is fine as-is)
export EXTRA_CMD="export OF_MAINTAINER=~jkoo"

# Use latest Magisk for addon
export OF_USE_LATEST_MAGISK=true

# Build environment
export SYNC_PATH="$HOME/work"
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
