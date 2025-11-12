BOARD_VENDOR_SEPOLICY_DIRS += device/google/gs-common/audio/sepolicy/common

#Audio Vendor libraries
PRODUCT_PACKAGES += \
	libfvsam_prm_parser \
	libmahalcontroller

ifeq ($(USE_MAM_V4_ABOVE),true)
PRODUCT_PACKAGES += \
	libMAM_Google_Pixel_Android
else
PRODUCT_PACKAGES += \
	libAlgFx_HiFi3z
endif

$(call soong_config_set,aoc_audio_board,platform,$(TARGET_BOARD_PLATFORM))
