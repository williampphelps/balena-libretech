
inherit resin-u-boot

UBOOT_KCONFIG_SUPPORT = "1"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://balenaos_bootcommand.cfg \
"

do_clean() {
    cd ${S}
    make mrproper
}

addtask clean before do_compile after do_configure
