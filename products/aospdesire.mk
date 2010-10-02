# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common aospdesiremod stuff.
$(call inherit-product, vendor/meLIanTQ/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/meLIanTQ/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aospdesire
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=FRG83 PRODUCT_NAME=htc_bravo BUILD_FINGERPRINT=htc_wwe/htc_bravo/bravo/bravo:2.2/FRF91/226611:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="2.10.405.2 CL226611 release-keys"

# Include the Torch app
PRODUCT_PACKAGES += Torch

# Extra Bravo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/meLIanTQ/overlay/bravo

# If Want Build with SenceIcon
#PRODUCT_PACKAGE_OVERLAYS += vendor/meLIanTQ/SenceIcon

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,113,115,117,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Enable Windows Media
WITH_WINDOWS_MEDIA := true

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=AOSPDesire_1.5.4

#
# Copy Desire specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/meLIanTQ/prebuilt/bravo/app/Clicker.apk:system/app/Clicker.apk \
    vendor/meLIanTQ/prebuilt/bravo/app/HTC_IME.apk:system/app/HTC_IME.apk \
    vendor/meLIanTQ/prebuilt/bravo/app/SlideShow.apk:system/app/SlideShow.apk \
    vendor/meLIanTQ/prebuilt/bravo/etc/init.d/01a2sd:system/etc/init.d/01a2sd \
    vendor/meLIanTQ/prebuilt/bravo/etc/init.d/02postinstall:system/etc/init.d/02postinstall \
    vendor/meLIanTQ/prebuilt/bravo/etc/init.d/03config:system/etc/init.d/03config \
    vendor/meLIanTQ/prebuilt/bravo/etc/init.d/04loader:system/etc/init.d/04loader \
    vendor/meLIanTQ/prebuilt/bravo/etc/AOSPDesire.conf:system/etc/AOSPDesire.conf \
    vendor/meLIanTQ/prebuilt/bravo/lib/libt99.so:system/lib/libt99.so \
    vendor/meLIanTQ/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
