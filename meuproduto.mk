$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# $(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# # # Enable updating of APEXes
# $(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# # # Enable Scoped Storage related
# $(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# ================= Local Variables =================
LOCAL_KERNEL 		    := device/casa/placamae/blackbox/Image.lz4
LOCAL_DTB 			    := device/casa/placamae/blackbox/
HARDWARE_NAME 		    := placamae# 			Variable used at processador/BoardConfig.mk
DTBO_UNSIGNED 		    := dtbo-unsigned.img# 	Variable used at build/tasks/dtimages.mk
GPU_TYPE                := gondul_ion#          Variable used at binaries/gpu/Android.mk
BOARD_INSTALL_VULKAN    := true#                Variable used at binaries/gpu/Android.mk
BOARD_INSTALL_OPENCL    := true#                Variable used at binaries/gpu/Android.mk
TARGET_BOARD_PLATFORM   := yukawa#              Variable used at hal/gralloc/Android.mk
# ================= END =================

# ================= Super Partition Options =================
PRODUCT_BUILD_SUPER_PARTITION 	:= true
PRODUCT_USE_DYNAMIC_PARTITIONS 	:= true
# ================= END =================

# ================= Production Options =================
PRODUCT_NAME            := meuproduto
PRODUCT_DEVICE          := processador
PRODUCT_BRAND           := Android
PRODUCT_MODEL           := Computador da Casa
PRODUCT_MANUFACTURER    := Casa_Jao
# ================= END =================

# ================= Init Files =================
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.$(HARDWARE_NAME).rc \
    $(LOCAL_PATH)/init/init.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.$(HARDWARE_NAME).usb.rc \
    $(LOCAL_PATH)/init/init.recovery.hardware.rc:recovery/root/init.recovery.$(HARDWARE_NAME).rc
# ================= END =================

# ================= Fstab Files =================
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab/fstab:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(HARDWARE_NAME) \
    $(LOCAL_PATH)/fstab/fstab.ramdisk.common:$(TARGET_COPY_OUT_RAMDISK)/fstab.$(HARDWARE_NAME) \
# ================= END =================

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

# Software Gatekeeper HAL
# PRODUCT_PACKAGES += \
#     android.hardware.gatekeeper@1.0-service.software

# ========================================

# PRODUCT_PROPERTY_OVERRIDES += \
#     ro.product.device=MeuTerminal

# PRODUCT_SHIPPING_API_LEVEL := 29
# PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# PRODUCT_PACKAGES += \
# 	android.hardware.fastboot@1.0 \
# 	android.hardware.fastboot@1.0-impl-mock \
# 	fastbootd

# PRODUCT_PACKAGES += \
#     android.hardware.keymaster@3.0-impl \
#     android.hardware.keymaster@3.0-service

    
# =========================================



# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc \

# PRODUCT_PROPERTY_OVERRIDES += \
#     ro.sf.lcd_density=320

# PRODUCT_PACKAGES += \
#     libGLES_mali \
#     libGLES_android \
#     gralloc.yukawa \
#     android.hardware.graphics.composer@2.1-impl \
#     android.hardware.graphics.composer@2.1-service \
#     android.hardware.graphics.allocator@2.0-service \
#     android.hardware.graphics.allocator@2.0-impl \
#     android.hardware.graphics.mapper@2.0-impl

# PRODUCT_PACKAGES += \
#     hwcomposer.drm_meson \
#     android.hardware.drm@1.0-impl \
#     android.hardware.drm@1.0-service \
#     android.hardware.drm@1.4-service.widevine \
#     android.hardware.drm@1.4-service.clearkey

# # Vulkan
# PRODUCT_COPY_FILES += \
#     frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:vendor/etc/permissions/android.hardware.vulkan.version.xml \
#     frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:vendor/etc/permissions/android.hardware.vulkan.compute.xml \
#     frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:vendor/etc/permissions/android.hardware.vulkan.level.xml

# PRODUCT_PACKAGES +=  \
#     vulkan.yukawa.so


# PRODUCT_PROPERTY_OVERRIDES += \
#     ro.hdmi.device_type=4 \
#     persist.sys.hdmi.keep_awake=false

# # Video
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/binaries/video_firmware/g12a_h264.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/g12a_h264.bin \
#     $(LOCAL_PATH)/binaries/video_firmware/g12a_hevc_mmu.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/g12a_hevc_mmu.bin \
#     $(LOCAL_PATH)/binaries/video_firmware/g12a_vp9.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/g12a_vp9.bin \
#     $(LOCAL_PATH)/binaries/video_firmware/gxl_mpeg4_5.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/gxl_mpeg4_5.bin \
#     $(LOCAL_PATH)/binaries/video_firmware/gxl_mpeg12.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/gxl_mpeg12.bin \
#     $(LOCAL_PATH)/binaries/video_firmware/gxl_mjpeg.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/gxl_mjpeg.bin \
#     $(LOCAL_PATH)/binaries/video_firmware/sm1_hevc_mmu.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/sm1_hevc_mmu.bin \
#     $(LOCAL_PATH)/binaries/video_firmware/sm1_vp9_mmu.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/meson/vdec/sm1_vp9_mmu.bin

# ========================================


# ========================================

# PRODUCT_PACKAGES += \
#     android.hardware.audio@2.0-service \
#     android.hardware.audio@6.0-impl \
#     android.hardware.audio.effect@6.0-impl \
#     android.hardware.soundtrigger@2.2-impl \

# USE_XML_AUDIO_POLICY_CONF := 1
# PRODUCT_COPY_FILES += \
#     device/casa/placamae/xml/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
#     frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
#     frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
#     frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
#     frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
#     frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
#     frameworks/av/media/libeffects/data/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# PRODUCT_COPY_FILES += \
#     device/casa/placamae/xml/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
#     frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml

# Build default bluetooth a2dp and usb audio HALs
# PRODUCT_PACKAGES += \
#     audio.usb.default \
#     audio.primary.yukawa \
#     audio.r_submix.default \
#     audio.bluetooth.default \
#     audio.hearing_aid.default \
#     audio.a2dp.default \
#     tinyplay \
#     tinycap \
#     tinymix \
#     tinypcminfo \
#     cplay
# ========================================

# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/binaries/bt-wifi-firmware/BCM.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/BCM4359C0.hcd \
#     $(LOCAL_PATH)/binaries/bt-wifi-firmware/fw_bcm4359c0_ag.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/fw_bcm4359c0_ag.bin \
#     $(LOCAL_PATH)/binaries/bt-wifi-firmware/nvram.txt:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/nvram.txt \
#     $(LOCAL_PATH)/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
#     $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
#     $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \


# =======================================

# PRODUCT_COPY_FILES +=  \
#     frameworks/native/data/etc/android.software.app_widgets.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.app_widgets.xml \
#     frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
#     frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
#     frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
#     frameworks/native/data/etc/android.software.device_admin.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_admin.xml \
#     frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
#     frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
#     frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
#     frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
#     frameworks/native/data/etc/android.software.cts.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.cts.xml \
#     frameworks/native/data/etc/android.software.backup.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.backup.xml





# PRODUCT_PACKAGES += Launcher3QuickStep





# PRODUCT_PACKAGES += \
#     android.hardware.health@2.0-service.yukawa \
#     android.hardware.health@2.0-service

# # CEC
# PRODUCT_PACKAGES += \
#     android.hardware.tv.cec@1.0-impl \
#     android.hardware.tv.cec@1.0-service \
#     hdmi_cec.yukawa

# # USB
# PRODUCT_PACKAGES += \
#     android.hardware.usb@1.1-service

# PRODUCT_RUNTIMES := runtime_libart_default
# PRODUCT_PACKAGES += vndk_package



# # PowerHAL
# PRODUCT_PACKAGES += \
#     power.default \
#     android.hardware.power@1.0-impl \
#     android.hardware.power@1.0-service

# # ThermalHAL
# PRODUCT_PACKAGES += \
#     thermal.default \
#     android.hardware.thermal@1.0-impl \
#     android.hardware.thermal@1.0-service

# # Memtrack
# PRODUCT_PACKAGES += \
#     memtrack.default \
#     android.hardware.memtrack@1.0-service \
#     android.hardware.memtrack@1.0-impl

# PRODUCT_PACKAGES += \
#     libhidltransport \
#     libhwbinder 

# PRODUCT_PACKAGES += \
#     vndk_package

# PRODUCT_PACKAGES += \
#     llkd

# PRODUCT_PACKAGES += android.hardware.camera.provider@2.4-impl
# PRODUCT_PACKAGES += android.hardware.camera.provider@2.4-external-service
# PRODUCT_COPY_FILES += \
#     device/amlogic/yukawa/hal/camera/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml


# # Bluetooth
# PRODUCT_PACKAGES += android.hardware.bluetooth@1.1-service.btlinux

# # Wifi
# PRODUCT_PACKAGES += libwpa_client wpa_supplicant hostapd wificond wpa_cli
# PRODUCT_PROPERTY_OVERRIDES += wifi.interface=wlan0 \
#                               wifi.supplicant_scan_interval=15

# PRODUCT_COPY_FILES += \
#     device/amlogic/yukawa/hal/audio/audio_policy_configuration_hdmi_only.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml
# DEVICE_PACKAGE_OVERLAYS += \
#     device/amlogic/yukawa/hal/audio/overlay_hdmi_only


# PRODUCT_COPY_FILES += \
#     device/amlogic/yukawa/input/Vendor_0001_Product_0001.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0001_Product_0001.kl

    # Light HAL
# PRODUCT_PACKAGES += \
#     android.hardware.light-service \
#     lights-yukawa



# # Speaker EQ
# PRODUCT_COPY_FILES += \
#     device/amlogic/yukawa/hal/audio/speaker_eq_sei610.fir:$(TARGET_COPY_OUT_VENDOR)/etc/speaker_eq_sei610.fir


# Include Virtualization APEX
# $(call inherit-product, packages/modules/Virtualization/apex/product_packages.mk)



# ============================ 




# # Feature permissions
# PRODUCT_COPY_FILES += \
#     device/amlogic/yukawa/permissions/yukawa.xml:/system/etc/sysconfig/yukawa.xml

# # Speaker EQ
# PRODUCT_COPY_FILES += \
#     device/amlogic/yukawa/hal/audio/speaker_eq_sei610.fir:$(TARGET_COPY_OUT_VENDOR)/etc/speaker_eq_sei610.fir



