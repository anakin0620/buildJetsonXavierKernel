#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install pkg-config -y
cd /usr/src
wget -N https://developer.nvidia.com/embedded/dlc/r32-3-1_Release_v1.0/Sources/T186/public_sources.tbz2

sudo tar -xvf public_sources.tbz2 Linux_for_Tegra/source/public/kernel_src.tbz2
tar -xvf Linux_for_Tegra/source/public/kernel_src.tbz2
# Space is tight; get rid of the compressed kernel source
rm -r Linux_for_Tegra
cd kernel/kernel-4.9
# Go get the default config file; this becomes the new system configuration
zcat /proc/config.gz > .config

