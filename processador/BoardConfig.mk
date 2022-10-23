# ================= Architecture =================
# Primary Arch
TARGET_ARCH				:= arm64
TARGET_ARCH_VARIANT		:= armv8-a
TARGET_CPU_ABI			:= arm64-v8a
TARGET_CPU_VARIANT		:= cortex-a53

# Secondary Arch
TARGET_2ND_ARCH			:= arm
TARGET_2ND_ARCH_VARIANT	:= armv8-a
TARGET_2ND_CPU_ABI		:= armeabi-v7a
TARGET_2ND_CPU_ABI2		:= armeabi
TARGET_2ND_CPU_VARIANT	:= cortex-a53
# ================= END =================

# ================= Partition Size =================
BOARD_SUPER_PARTITION_SIZE				:=	2147483648	#	2048	Mebibytes	|	2.15	Gigabytes
BOARD_PLACAMAE_DYNAMIC_PARTITIONS_SIZE	:=	2143289344	#	2044	Mebibytes 	|	1.57	Gigabytes
BOARD_BOOTIMAGE_PARTITION_SIZE			:=	33554432	#	32		Mebibytes	|	33.55	Megabytes
BOARD_RECOVERYIMAGE_PARTITION_SIZE		:=	33554432
BOARD_CACHEIMAGE_PARTITION_SIZE			:=	268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE		:=	12884901888	#	12		Gibibytes	|	12.88	Gigabytes
# ================= END =================

# ================= Partition Type =================
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE		:= ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE		:= ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE		:= ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE	:= ext4
# ================= END =================

# ================= Super Partition Options =================
TARGET_USE_DYNAMIC_PARTITIONS						:= true
BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT					:= true
BOARD_SUPER_PARTITION_GROUPS						:= placamae_dynamic_partitions
BOARD_PLACAMAE_DYNAMIC_PARTITIONS_PARTITION_LIST	:= system vendor
BOARD_SUPER_PARTITION_METADATA_DEVICE				:= super
BOARD_SUPER_IMAGE_IN_UPDATE_PACKAGE					:= false
TARGET_COPY_OUT_VENDOR								:= vendor
# ================= END =================

# ================= Kernel Options =================
BOARD_KERNEL_CMDLINE		+= no_console_suspend console=ttyAML0,115200 earlycon
BOARD_KERNEL_CMDLINE		+= printk.devkmsg=on
BOARD_KERNEL_CMDLINE		+= loglevel=7
BOARD_KERNEL_CMDLINE		+= init=/init
BOARD_KERNEL_CMDLINE		+= firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE		+= androidboot.boot_devices=soc/ffe07000.mmc 
BOARD_KERNEL_CMDLINE		+= androidboot.hardware=$(HARDWARE_NAME)
BOARD_KERNEL_CMDLINE		+= androidboot.selinux=permissive
# ================= END =================

# ================= Boot Image =================
BOARD_INCLUDE_DTB_IN_BOOTIMG	:= true
BOARD_KERNEL_OFFSET				:= 0x1080000
BOARD_MKBOOTIMG_ARGS			:= --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_BOOT_HEADER_VERSION		:= 2
BOARD_KERNEL_TAGS_OFFSET		:= 0x1000000
BOARD_MKBOOTIMG_ARGS			+= --header_version $(BOARD_BOOT_HEADER_VERSION)
# ================= END =================

# ================= MANIFEST =================
DEVICE_MANIFEST_FILE	+= device/casa/placamae/xml/manifest.xml
# ================= END =================

# ================= Recovery =================
TARGET_RECOVERY_PIXEL_FORMAT	:= RGBX_8888
TARGET_RECOVERY_FSTAB			:= device/casa/placamae/fstab/fstab.recovery.placamae
# ================= END =================