$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_SOONG_NAMESPACES += device/casa/placamae

# ================= Local Variables =================
LOCAL_KERNEL            := device/casa/placamae/blackbox/Image.lz4
LOCAL_DTB               := device/casa/placamae/blackbox/dtb.img
HARDWARE_NAME           := placamae#            Variable used at processador/BoardConfig.mk
TARGET_BOARD_PLATFORM   := yukawa#
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
    $(LOCAL_PATH)/init/init.placamae.recovery.rc:recovery/root/init.recovery.${HARDWARE_NAME}.rc \
    $(LOCAL_PATH)/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc \
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

# ================= suitable EGLConfig =================

PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=320

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.mapper@2.0-impl \
    gralloc.yukawa

PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.4-service.widevine \
    android.hardware.drm@1.4-service.clearkey \
    hwcomposer.drm_meson
# ================= END =================

# ================= Boot Animation =================
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
# Software Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software
# ================= END =================

# ================= keystore2 =================
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service
# ================= END =================

# ================= Audio =================
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.soundtrigger@2.2-impl
# ================= END =================

# ================= Bootcomplete =================
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service
# ================= END =================

# ================= Disable Screen Off =================
DEVICE_PACKAGE_OVERLAYS := device/casa/placamae/overlay
# ================= END =================

# ================= Apps configuration dependencies =================
PRODUCT_COPY_FILES +=  \
    frameworks/native/data/etc/android.software.app_widgets.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.app_widgets.xml 
# ================= END =================

# ================= UserLed =================
PRODUCT_PACKAGES += \
    placamae.hal.userled \
    placamae.hal.userled-service
# ================= END =================

PRODUCT_PACKAGES += \
    UserLedApp
