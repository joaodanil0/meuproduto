$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# ================= Local Variables =================
LOCAL_KERNEL            := device/casa/placamae/blackbox/Image.lz4
LOCAL_DTB               := device/casa/placamae/blackbox/
HARDWARE_NAME           := placamae#            Variable used at processador/BoardConfig.mk
DTBO_IMAGE              = dtbo-unsigned.img#    Variable used at build/tasks/dtimages.mk
DTB_IMAGE               = dtb.img#              Variable used at
# ================= END =================

# ================= Copy Kernel | DTBO =================
PRODUCT_COPY_FILES  +=$(LOCAL_KERNEL):kernel
PRODUCT_COPY_FILES  +=$(LOCAL_DTB)/$(DTB_IMAGE):dtb.img
# ================= END =================

# ================= Super Partition Options =================
PRODUCT_BUILD_SUPER_PARTITION   := true
PRODUCT_USE_DYNAMIC_PARTITIONS  := true
# ================= END =================

# ================= Production Options =================
PRODUCT_NAME            := meuproduto
PRODUCT_DEVICE          := processador
PRODUCT_BRAND           := Android
PRODUCT_MODEL           := Computador da Casa
PRODUCT_MANUFACTURER    := Casa_Jao
# ================= END =================

# ================= Fstab Files =================
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab/fstab.ramdisk.common:$(TARGET_COPY_OUT_RAMDISK)/fstab.$(HARDWARE_NAME) \
# ================= END =================
