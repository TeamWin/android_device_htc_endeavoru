## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/endeavoru/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/endeavoru/recovery/init:recovery/root/init \
    device/htc/endeavoru/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/endeavoru/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/endeavoru/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt


$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/endeavoru/endeavoru-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/endeavoru/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/endeavoru/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := htc_endeavoru
PRODUCT_DEVICE := endeavoru

TARGET_HAS_PREBUILT_INIT := ../../../device/htc/endeavoru/init
