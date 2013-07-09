# melea1000 product config

BOARD_USE_PRIV_GENERIC_KL := device/allwinner/melea1000/custom/Generic.kl

$(call inherit-product, device/allwinner/crane-common/ProductCommon.mk)

DEVICE_PACKAGE_OVERLAYS := device/allwinner/melea1000/overlay

PRODUCT_COPY_FILES += \
	device/allwinner/melea1000/kernel:kernel \
	device/allwinner/melea1000/recovery.fstab:recovery.fstab \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \

PRODUCT_COPY_FILES += \
	device/allwinner/melea1000/ueventd.sun4i.rc:root/ueventd.sun4i.rc \
	device/allwinner/melea1000/init.sun4i.rc:root/init.sun4i.rc \
	device/allwinner/melea1000/init.sun4i.usb.rc:root/init.sun4i.usb.rc \
	device/allwinner/melea1000/media_profiles.xml:system/etc/media_profiles.xml \
	device/allwinner/melea1000/camera.cfg:system/etc/camera.cfg \
	frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

#input device config
PRODUCT_COPY_FILES += \
	device/allwinner/melea1000/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/allwinner/melea1000/sun4i-ir.kl:system/usr/keylayout/sun4i-ir.kl \
	device/allwinner/melea1000/sun4i-ts.idc:system/usr/idc/sun4i-ts.idc
PRODUCT_COPY_FILES += \
	device/allwinner/melea1000/initlogo.rle:root/initlogo.rle \
    device/allwinner/melea1000/hwc_mid.idx:system/usr/hwc/hwc_mid.idx \
    device/allwinner/melea1000/hwc_mid.pal:system/usr/hwc/hwc_mid.pal \
    device/allwinner/melea1000/hwc_big.idx:system/usr/hwc/hwc_big.idx \
    device/allwinner/melea1000/hwc_big.pal:system/usr/hwc/hwc_big.pal

# pre-installed apks
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*.apk,$(LOCAL_PATH)/apk,system/preinstall)

#google service
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/googleservice,system/app)

PRODUCT_COPY_FILES += \
	device/allwinner/melea1000/vold.fstab:system/etc/vold.fstab

PRODUCT_PACKAGES += \
		gatord \
        TvdLauncher

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb \
	ro.sf.lcd_density=160 \
	ro.udisk.lable=melea1000 \
	ro.product.firmware=1.4 \
	ro.softmouse.left.code=6 \
	ro.softmouse.right.code=14 \
	ro.softmouse.top.code=67 \
	ro.softmouse.bottom.code=10 \
	ro.softmouse.leftbtn.code=2 \
	ro.softmouse.midbtn.code=-1 \
	ro.softmouse.rightbtn.code=-1 \
	keyguard.disable=true \
	ro.sw.hidesoftkbwhenhardkbin=0 \
	audio.routing=2 \
	audio.output.active=AUDIO_CODEC \
	audio.input.active=AUDIO_CODEC \
	ro.audio.multi.output=false \
	ro.sw.defaultlauncherpackage=com.allwinner.launcher \
	ro.sw.defaultlauncherclass=com.allwinner.launcher.Launcher \
	ro.sw.usedHardwareMouse=false

$(call inherit-product-if-exists, device/allwinner/melea1000/modules/modules.mk)

PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_BRAND  := allwinners
PRODUCT_NAME   := melea1000
PRODUCT_DEVICE := melea1000
PRODUCT_MODEL  := melea1000

