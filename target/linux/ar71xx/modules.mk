#
# Copyright (C) 2006-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/leds-rb750
  SUBMENU:=$(LEDS_MENU)
  TITLE:=RouterBOARD 750 LED support
  DEPENDS:=@TARGET_ar71xx
  KCONFIG:=CONFIG_LEDS_RB750
  FILES:=$(LINUX_DIR)/drivers/leds/leds-rb750.ko
  AUTOLOAD:=$(call AutoLoad,60,leds-rb750)
endef

define KernelPackage/leds-rb750/description
 Kernel module for the LEDs on the MikroTik RouterBOARD 750.
endef

$(eval $(call KernelPackage,leds-rb750))


define KernelPackage/leds-wndr3700-usb
  SUBMENU:=$(LEDS_MENU)
  TITLE:=WNDR3700 USB LED support
  DEPENDS:=@TARGET_ar71xx
  KCONFIG:=CONFIG_LEDS_WNDR3700_USB
  FILES:=$(LINUX_DIR)/drivers/leds/leds-wndr3700-usb.ko
  AUTOLOAD:=$(call AutoLoad,60,leds-wndr3700-usb)
endef

define KernelPackage/leds-wndr3700-usb/description
 Kernel module for the USB LED on the NETGEAR WNDR3700 board.
endef

$(eval $(call KernelPackage,leds-wndr3700-usb))


define KernelPackage/nand-ar934x
  SUBMENU:=$(OTHER_MENU)
  TITLE:=Atheros AR934x NAND flash controller driver
  KCONFIG:=\
    CONFIG_MTD_NAND_AR934X \
    CONFIG_MTD_NAND_AR934X_HW_ECC=y
  DEPENDS:=@TARGET_ar71xx +kmod-nand
  FILES:=$(LINUX_DIR)/drivers/mtd/nand/ar934x_nfc.ko
  AUTOLOAD:=$(call AutoLoad,25,ar934x_nfc)
endef

define KernelPackage/nand-ar934x/description
  Atheros AR934x NAND flash controller driver.
endef

$(eval $(call KernelPackage,nand-ar934x))


define KernelPackage/spi-vsc7385
  SUBMENU:=$(SPI_MENU)
  TITLE:=Vitesse VSC7385 ethernet switch driver
  DEPENDS:=@TARGET_ar71xx
  KCONFIG:=CONFIG_SPI_VSC7385
  FILES:=$(LINUX_DIR)/drivers/spi/spi-vsc7385.ko
  AUTOLOAD:=$(call AutoLoad,93,spi-vsc7385)
endef

define KernelPackage/spi-vsc7385/description
  This package contains the SPI driver for the Vitesse VSC7385 ethernet switch.
endef

$(eval $(call KernelPackage,spi-vsc7385))

define KernelPackage/ag71xx
  SUBMENU:=$(NETWORK_SUPPORT_MENU)
  TITLE:=AG71xx support
  DEPENDS:=@TARGET_ar71xx
  KCONFIG:=CONFIG_AG71XX
  FILES:=$(LINUX_DIR)/drivers/net/ethernet/atheros/ag71xx/ag71xx.ko
  AUTOLOAD:=$(call AutoLoad,1,ag71xx,1)
endef

define KernelPackage/ag71xx/description
 AG71xx support
endef

$(eval $(call KernelPackage,ag71xx))
