# Generic cyanogenmod product
PRODUCT_NAME := aosp
PRODUCT_BRAND := aosp
PRODUCT_DEVICE := generic
TARGET_BUILD_VARIANT := user

#PRODUCT_PACKAGES += ADWLauncher

# Add ROMManager build property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=DonMessWivIt.ogg

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=meliantq

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# CyanogenMod specific product packages
PRODUCT_PACKAGES += \
    DSPManager \
    Themes \
    ThemesHelper \
    RenderFX

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/meLIanTQ/AOSPDesire.mkdn:system/etc/AOSPDesire.txt

# Common CM overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/meLIanTQ/overlay/common

# Bring in some audio files
include frameworks/base/data/sounds/AudioPackage4.mk

# include available languages for TTS in the system image
include external/svox/pico/lang/PicoLangDeDeInSystem.mk
include external/svox/pico/lang/PicoLangEnGBInSystem.mk
include external/svox/pico/lang/PicoLangEnUsInSystem.mk
include external/svox/pico/lang/PicoLangEsEsInSystem.mk
include external/svox/pico/lang/PicoLangFrFrInSystem.mk
include external/svox/pico/lang/PicoLangItItInSystem.mk

PRODUCT_COPY_FILES += \
    vendor/meLIanTQ/prebuilt/common/app/RomManager.apk:system/app/RomManager.apk \
    vendor/meLIanTQ/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/meLIanTQ/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/meLIanTQ/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/meLIanTQ/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/meLIanTQ/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/meLIanTQ/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/meLIanTQ/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/meLIanTQ/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/meLIanTQ/prebuilt/common/etc/profile:system/etc/profile \
    vendor/meLIanTQ/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/meLIanTQ/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/meLIanTQ/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/meLIanTQ/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/meLIanTQ/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/meLIanTQ/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/meLIanTQ/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/meLIanTQ/prebuilt/common/xbin/lsof:system/xbin/lsof \
    vendor/meLIanTQ/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/meLIanTQ/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

# Empty CYANOGEN_WITH_GOOGLE for remove the Backuptools
CYANOGEN_WITH_GOOGLE := true

ifdef meLIanTQ_WITH_GOOGLE

    PRODUCT_COPY_FILES += \
        vendor/meLIanTQ/GApps/ChromeToPhone.apk:system/app/ChromeToPhone.apk \
        vendor/meLIanTQ/GApps/Facebook.apk:system/app/Facebook.apk \
        vendor/meLIanTQ/GApps/GenieWidget.apk:system/app/GenieWidget.apk \
        vendor/meLIanTQ/GApps/Gmail.apk:system/app/Gmail.apk \
        vendor/meLIanTQ/GApps/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
        vendor/meLIanTQ/GApps/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
        vendor/meLIanTQ/GApps/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
        vendor/meLIanTQ/GApps/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
        vendor/meLIanTQ/GApps/GoogleGoggles.apk:system/app/GoogleGoggles.apk \
        vendor/meLIanTQ/GApps/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
        vendor/meLIanTQ/GApps/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
        vendor/meLIanTQ/GApps/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
        vendor/meLIanTQ/GApps/HtcCopyright.apk:system/app/HtcCopyright.apk \
        vendor/meLIanTQ/GApps/HtcEmailPolicy.apk:system/app/HtcEmailPolicy.apk \
        vendor/meLIanTQ/GApps/HtcSettings.apk:system/app/HtcSettings.apk \
        vendor/meLIanTQ/GApps/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
        vendor/meLIanTQ/GApps/Maps.apk:system/app/Maps.apk \
        vendor/meLIanTQ/GApps/MarketUpdater.apk:system/app/MarketUpdater.apk \
        vendor/meLIanTQ/GApps/MediaUploader.apk:system/app/MediaUploader.apk \
        vendor/meLIanTQ/GApps/NetworkLocation.apk:system/app/NetworkLocation.apk \
        vendor/meLIanTQ/GApps/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
        vendor/meLIanTQ/GApps/Panoramio.apk:system/app/Panoramio.apk \
        vendor/meLIanTQ/GApps/PassionQuickOffice.apk:system/app/PassionQuickOffice.apk \
        vendor/meLIanTQ/GApps/SetupWizard.apk:system/app/SetupWizard.apk \
        vendor/meLIanTQ/GApps/Street.apk:system/app/Street.apk \
        vendor/meLIanTQ/GApps/Talk.apk:system/app/Talk.apk \
        vendor/meLIanTQ/GApps/Twitter.apk:system/app/Twitter.apk \
        vendor/meLIanTQ/GApps/Vending.apk:system/app/Vending.apk \
        vendor/meLIanTQ/GApps/YouTube.apk:system/app/YouTube.apk \
        vendor/meLIanTQ/GApps/VoiceSearch.apk:system/app/VoiceSearch.apk \
        vendor/meLIanTQ/GApps/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
        vendor/meLIanTQ/GApps/features.xml:system/etc/permissions/features.xml \
        vendor/meLIanTQ/GApps/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
        vendor/meLIanTQ/GApps/libimageutils.so:system/lib/libimageutils.so \
        vendor/meLIanTQ/GApps/libinterstitial.so:system/lib/libinterstitial.so \
        vendor/meLIanTQ/GApps/libspeech.so:system/lib/libspeech.so \
        vendor/meLIanTQ/GApps/libzxing.so:system/lib/libzxing.so
else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch
endif
