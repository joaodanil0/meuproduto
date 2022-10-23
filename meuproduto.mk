$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_SOONG_NAMESPACES += device/casa/placamae

# ================= Local Variables =================
LOCAL_KERNEL            := device/casa/placamae/blackbox/Image.lz4
LOCAL_DTB               := device/casa/placamae/blackbox/dtb.img
HARDWARE_NAME           := placamae#            Variable used at processador/BoardConfig.mk
# ================= END =================

# ================= Copy Kernel | DTB =================
PRODUCT_COPY_FILES  +=$(LOCAL_KERNEL):kernel
PRODUCT_COPY_FILES  +=$(LOCAL_DTB):dtb.img
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
    $(LOCAL_PATH)/fstab/fstab.placamae:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(HARDWARE_NAME)
# ================= END =================

# ================= Init Files =================
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.placamae.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.${HARDWARE_NAME}.rc \
    $(LOCAL_PATH)/init/init.placamae.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.${HARDWARE_NAME}.usb.rc \
    $(LOCAL_PATH)/init/init.placamae.adb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.${HARDWARE_NAME}.adb.rc \
    $(LOCAL_PATH)/init/init.placamae.recovery.rc:recovery/root/init.recovery.${HARDWARE_NAME}.rc
# ================= END =================

# ================= Recovery =================
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0 \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
# ================= END =================

# ================= OpenGL ES implementation =================
PRODUCT_PACKAGES +=  \
    libGLES_mali \
    libGLES_android
# ================= END =================