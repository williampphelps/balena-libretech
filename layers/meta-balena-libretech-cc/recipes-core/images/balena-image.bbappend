IMAGE_FSTYPES:append:libretech-cc = " balenaos-img"

IMAGE_ROOTFS_SIZE = "319488"
KERNEL_IMAGETYPE = "fitImage"
BALENA_BOOT_SIZE = "81920"
IMAGE_FSTYPES:remove = "wic"
IMAGE_BOOT_FILES:remove = "Image"
IMAGE_BOOT_FILES:remove = "fitImage"

# Customize balenaos-img
BALENA_IMAGE_BOOTLOADER:libretech-cc = "u-boot"
BALENA_BOOT_PARTITION_FILES:libretech-cc = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    meson-gxl-s905x-libretech-cc.dtb:/dtb/meson-gxl-s905x-libretech-cc.dts.dtb \
"
