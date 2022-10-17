# ================= Architecture =================
# Primary Arch
TARGET_ARCH 		:= arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI 		:= arm64-v8a
TARGET_CPU_VARIANT 	:= cortex-a53

# Secondary Arch
TARGET_2ND_ARCH 	    := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI 	    := armeabi-v7a
TARGET_2ND_CPU_ABI2 	:= armeabi
TARGET_2ND_CPU_VARIANT 	:= cortex-a53
# ================= END =================

# ================= Partition Size =================
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 12884901888 	#	 12   Gibibyte
BOARD_SUPER_PARTITION_SIZE 		    := 2147483648  	#	  2   Gibibyte
BOARD_DB_DYNAMIC_PARTITIONS_SIZE 	:= 1572864000  	#	  1.5 Gibibyte
BOARD_CACHEIMAGE_PARTITION_SIZE 	:= 268435456   	#	256   Mebibyte
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 33554432	    #	 32   Mebibyte
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 33554432	    #	 32   Mebibyte
BOARD_DTBOIMG_PARTITION_SIZE 		:= 8388608 	    #	  8   Mebibyte
# ================= END =================

# ================= Partition Type =================
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE 	    := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE 	    := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE 	    := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE	:= ext4
# TARGET_USERIMAGES_USE_EXT4 := true
# ================= END =================

# ================= Super Partition Options =================
TARGET_USE_DYNAMIC_PARTITIONS 			    := true
BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT 		    := true
BOARD_SUPER_PARTITION_GROUPS 			    := db_dynamic_partitions
BOARD_DB_DYNAMIC_PARTITIONS_PARTITION_LIST 	:= system vendor
BOARD_SUPER_PARTITION_METADATA_DEVICE 		:= super
BOARD_SUPER_IMAGE_IN_UPDATE_PACKAGE 		:= false
TARGET_COPY_OUT_VENDOR                      := vendor
# ================= END =================

# ================= Recovery Partition Options =================
TARGET_RECOVERY_PIXEL_FORMAT 	:= RGBX_8888
TARGET_RECOVERY_FSTAB 		    := device/casa/placamae/fstab/fstab.recovery
# ================= END =================

# ================= Kernel Options =================
BOARD_KERNEL_OFFSET      	:= 0x1080000
BOARD_KERNEL_TAGS_OFFSET 	:= 0x1000000

BOARD_KERNEL_CMDLINE 		+= no_console_suspend console=ttyAML0,115200 earlycon
BOARD_KERNEL_CMDLINE 		+= printk.devkmsg=on
BOARD_KERNEL_CMDLINE 		+= androidboot.boot_devices=soc/ffe07000.mmc 
BOARD_KERNEL_CMDLINE 		+= init=/init
BOARD_KERNEL_CMDLINE 		+= firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE 		+= androidboot.hardware=$(HARDWARE_NAME)
BOARD_KERNEL_CMDLINE 		+= androidboot.selinux=permissive
# ================= END =================

# ================= DTBO Options =================
BOARD_PREBUILT_DTBOIMAGE 	= $(PRODUCT_OUT)/$(DTBO_UNSIGNED)
# ================= END =================

# ================= Boot Image =================
BOARD_INCLUDE_DTB_IN_BOOTIMG 	:= true
BOARD_MKBOOTIMG_ARGS     	    := --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_BOOT_HEADER_VERSION 	    := 2
BOARD_MKBOOTIMG_ARGS 		    += --header_version $(BOARD_BOOT_HEADER_VERSION)
# ================= END =================

# ================= MANIFEST =================
# DEVICE_MANIFEST_FILE 	+= device/casa/placamae/xml/manifest_kernel5.xml
DEVICE_MANIFEST_FILE 	+= device/casa/placamae/xml/manifest.xml
# ================= END =================

# ================= Compatibility Matrix =================
# DEVICE_MATRIX_FILE 	:= device/casa/placamae/xml/compatibility_matrix.xml
# ================= END =================

# ================= Race Condition =================
# Treble 
# PRODUCT_FULL_TREBLE_OVERRIDE    := true
# BOARD_VNDK_VERSION              := current
# ================= END =================


# BOARD_SEPOLICY_DIRS += \
#         device/casa/placamae/sepolicy

# USE_E2FSPROGS := true

# BOARD_USES_GENERIC_AUDIO := false
# BOARD_USES_ALSA_AUDIO := true
# TARGET_USES_MKE2FS := true
# TARGET_USES_HWC2 := true
# DEXPREOPT_GENERATE_APEX_IMAGE := true

# TARGET_USES_64_BIT_BINDER := true
# TARGET_SUPPORTS_64_BIT_APPS := true
# BOARD_HAVE_BLUETOOTH := true

# TARGET_NO_BOOTLOADER := true
# TARGET_NO_KERNEL := false



# WPA_SUPPLICANT_VERSION := VER_0_8_X
# BOARD_WPA_SUPPLICANT_DRIVER := NL80211
# BOARD_HOSTAPD_DRIVER := NL80211

# TARGET_BOOTLOADER_BOARD_NAME := vim3
# TARGET_BOARD_INFO_FILE := device/amlogic/yukawa/vim/board-info-vim3.txt

# BOARD_AVB_ENABLE := false
