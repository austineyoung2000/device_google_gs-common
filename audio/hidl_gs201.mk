DEVICE_MANIFEST_FILE += device/google/gs-common/audio/hidl/manifest.xml

# Audio HAL configurations
PRODUCT_COPY_FILES += \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration_7_0.xml \
	frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration_7_0.xml \
	frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration_7_0.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration_7_0.xml

# Audio HAL Server & Default Implementations
PRODUCT_PACKAGES += \
	android.hardware.audio.service \
	android.hardware.audio@7.1-impl \
	android.hardware.audio.effect@7.0-impl \
	android.hardware.soundtrigger@2.3-impl \
	vendor.google.whitechapel.audio.audioext@4.0-impl \
	android.hardware.bluetooth.audio-impl \

#Audio HAL libraries
PRODUCT_PACKAGES += \
	audio.primary.$(TARGET_BOARD_PLATFORM) \
	audio.platform.aoc \
	audio_tunnel_aoc \
	aoc_aud_ext \
	libaoctuningdecoder \
	liboffloadeffect \
	audio_bt_aoc \
	audio_waves_aoc \
	audio_fortemedia_aoc \
	audio_bluenote_aoc \
	audio_usb_aoc \
	audio_cca_aoc \
	libamcsextfile \
	audio_amcs_ext \
	audio.usb.default \
	audio.usbv2.default \
	audio.bluetooth.default \
	audio.r_submix.default \
	audio_spk_35l41 \
	sound_trigger.primary.$(TARGET_BOARD_PLATFORM)

ifeq (,$(filter aosp_%,$(TARGET_PRODUCT)))
# IAudioMetricExt HIDL
PRODUCT_PACKAGES += \
	vendor.google.audiometricext@1.0-service-vendor
endif

BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/audio/sepolicy/hidl

include device/google/gs-common/audio/common.mk

DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += device/google/gs-common/audio/hidl/device_framework_matrix_product.xml
