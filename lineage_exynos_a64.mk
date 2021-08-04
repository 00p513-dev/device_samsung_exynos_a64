$(call inherit-product, build/target/product/aosp_arm.mk)
$(call inherit-product, build/target/product/gsi_release.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Allow building otatools
TARGET_FORCE_OTA_PACKAGE := true

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_USES_64_BIT_BINDER := true

PRODUCT_COPY_FILES += \
    device/generic/goldfish/data/etc/permissions/privapp-permissions-goldfish.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-goldfish.xml \

PRODUCT_NAME := lineage_exynos_a64
PRODUCT_DEVICE := exynos_a64
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Exynos A64 Generic
PRODUCT_MANUFACTURER := Samsung
