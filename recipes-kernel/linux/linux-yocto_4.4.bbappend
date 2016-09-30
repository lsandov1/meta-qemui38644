FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_qemui38644 = "qemui38644"


KERNEL_FEATURES_append_qemui38644 += " cfg/smp.scc"

SRC_URI += "file://qemui38644-standard.scc \
            file://qemui38644-user-config.cfg \
            file://qemui38644-user-features.scc \
           "

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_qemui38644 ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_qemui38644 ?= "${AUTOREV}"
#LINUX_VERSION = "4.4"
