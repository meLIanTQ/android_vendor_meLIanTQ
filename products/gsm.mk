# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/meLIanTQ/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/meLIanTQ/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \
    vendor/meLIanTQ/prebuilt/common/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk
