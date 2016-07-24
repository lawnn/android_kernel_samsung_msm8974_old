#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

mkdir output

make -C $(pwd) O=output msm8974_sec_defconfig -j8 VARIANT_DEFCONFIG=msm8974pro_sec_klte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output -j8

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
