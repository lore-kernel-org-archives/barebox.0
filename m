Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN7Pg-0005iV-Kw
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 16:16:48 +0000
Received: from cpe00142a336e11-cm001ac318e826.cpe.net.cable.rogers.com
	([174.113.191.234] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NN7Pf-0000KG-Hc
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 11:16:43 -0500
Date: Tue, 22 Dec 2009 11:16:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912221113050.6101@localhost>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: PROPOSED patch, standardize drivers menuconfig entries
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  here's a newer pass at cleaning up the drivers menuconfig structure,
not being officially submitted, i'm going to make another pass and see
if i missed anything, but i'm open to suggestions.  some observations:

  - *all* drivers are now selectable at the top level
  - because of that, there's no need to re-test that same
    macro in the subdir, which is why some of those lower
    Makefiles now have obj-y.

  if this looks good, then i'll submit it for real.


diff --git a/drivers/Makefile b/drivers/Makefile
index 5dc7756..285dcc8 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -1,8 +1,8 @@
-obj-y	+= net/
-obj-y	+= serial/
-obj-y	+= nand/
-obj-y	+= nor/
-obj-y	+= usb/
-obj-$(CONFIG_SPI) += spi/
-obj-$(CONFIG_I2C) += i2c/
-obj-$(CONFIG_VIDEO) += video/
+obj-$(CONFIG_NET_DRIVERS)	+= net/
+obj-$(CONFIG_SERIAL_DRIVERS)	+= serial/
+obj-$(CONFIG_NAND_DRIVERS)	+= nand/
+obj-$(CONFIG_NOR_DRIVERS)	+= nor/
+obj-$(CONFIG_USB_DRIVERS)	+= usb/
+obj-$(CONFIG_SPI_DRIVERS)	+= spi/
+obj-$(CONFIG_I2C_DRIVERS)	+= i2c/
+obj-$(CONFIG_VIDEO_DRIVERS)	+= video/
diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index 46723ed..87c3445 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -1,7 +1,7 @@
-menuconfig I2C
+menuconfig I2C_DRIVERS
 	bool "I2C drivers                   "

-if I2C
+if I2C_DRIVERS

 config DRIVER_I2C_IMX
 	bool "i.MX I2C Master driver"
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 5dd642f..ec1f671 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1,6 +1,4 @@
-obj-$(CONFIG_I2C) += i2c.o
-
-obj-$(CONFIG_DRIVER_I2C_IMX) += i2c-imx.o
-
-obj-$(CONFIG_DRIVER_I2C_MC13892) += mc13892.o
-obj-$(CONFIG_DRIVER_I2C_MC9SDZ60) += mc9sdz60.o
+obj-y					+= i2c.o
+obj-$(CONFIG_DRIVER_I2C_IMX)		+= i2c-imx.o
+obj-$(CONFIG_DRIVER_I2C_MC13892)	+= mc13892.o
+obj-$(CONFIG_DRIVER_I2C_MC9SDZ60)	+= mc9sdz60.o
diff --git a/drivers/nand/Kconfig b/drivers/nand/Kconfig
index 031b94d..2059558 100644
--- a/drivers/nand/Kconfig
+++ b/drivers/nand/Kconfig
@@ -1,4 +1,4 @@
-menuconfig NAND
+menuconfig NAND_DRIVERS
 	bool "NAND support                  "
 	select MTD_NAND_IDS
 	help
@@ -6,7 +6,7 @@ menuconfig NAND
 	  devices. For further information see
 	  <http://www.linux-mtd.infradead.org/doc/nand.html>.

-if NAND
+if NAND_DRIVERS

 config NAND_IMX
 	bool
diff --git a/drivers/nand/Makefile b/drivers/nand/Makefile
index 73f7346..fe32025 100644
--- a/drivers/nand/Makefile
+++ b/drivers/nand/Makefile
@@ -1,12 +1,10 @@
-
 # Generic NAND options
-obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o
+obj-y					+= nand.o nand_ecc.o
+obj-y					+= nand_base.o nand_bbt.o
 obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
-obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
-
 obj-$(CONFIG_MTD_NAND_DISKONCHIP)	+= diskonchip.o
 obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o
 obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
 obj-$(CONFIG_NAND_S3C24X0)		+= nand_s3c2410.o
-#obj-$(CONFIG_NAND)			+= nand_util.o
+#obj-y					+= nand_util.o
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index ed7656e..eb9b34d 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -13,9 +13,12 @@ config HAS_NETX_ETHER
 config MIIPHY
 	bool

-menu "Network drivers               "
+menuconfig NET_DRIVERS
+	bool "Network drivers               "
 	depends on NET

+if NET_DRIVERS
+
 config DRIVER_NET_CS8900
 	bool "cs8900 ethernet driver"
 	depends on HAS_CS8900
@@ -75,5 +78,5 @@ config DRIVER_NET_TAP

 source "drivers/net/usb/Kconfig"

-endmenu
+endif

diff --git a/drivers/nor/Kconfig b/drivers/nor/Kconfig
index 7d9497e..1e487c9 100644
--- a/drivers/nor/Kconfig
+++ b/drivers/nor/Kconfig
@@ -1,8 +1,11 @@
-menu "flash drivers                 "
-
 config HAS_CFI
 	bool

+menuconfig FLASH_DRIVERS
+	bool "flash drivers                 "
+
+if FLASH_DRIVERS
+
 config DRIVER_CFI
 	bool "cfi flash driver"
 	help
@@ -71,4 +74,4 @@ config CFI_BUFFER_WRITE
 	bool "use cfi driver with buffer write"
 	depends on DRIVER_CFI || DRIVER_CFI_NEW

-endmenu
+endif
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b0ff5fa..0f9aa7f 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -1,4 +1,7 @@
-menu "serial drivers                "
+menuconfig SERIAL_DRIVERS
+	bool "Serial drivers                "
+
+if SERIAL_DRIVERS

 config DRIVER_SERIAL_ARM_DCC
 	depends on ARM
@@ -61,4 +64,4 @@ config DRIVER_SERIAL_S3C24X0_AUTOSYNC
 	  Say Y here if you want to use the auto flow feature of this
 	  UART. RTS and CTS will be handled by the hardware when enabled.

-endmenu
+endif
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 3eebd08..93e9000 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -1,16 +1,14 @@
-menu "SPI drivers                   "
-
-config SPI
-	bool "Enable SPI driver support"
+menuconfig SPI_DRIVERS
+	bool "SPI drivers                   "
 	default y

+if SPI_DRIVERS
+
 config DRIVER_SPI_IMX
 	bool "i.MX SPI Master driver"
 	depends on ARCH_IMX
-	depends on SPI

 config DRIVER_SPI_MC13783
 	bool "MC13783 a.k.a. PMIC driver"
-	depends on SPI

-endmenu
+endif
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 81f2c6b..c582b62 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -1,4 +1,3 @@
-obj-$(CONFIG_SPI) += spi.o
-obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
-
-obj-$(CONFIG_DRIVER_SPI_MC13783) += mc13783.o
+obj-y					+= spi.o
+obj-$(CONFIG_DRIVER_SPI_IMX)		+= imx_spi.o
+obj-$(CONFIG_DRIVER_SPI_MC13783)	+= mc13783.o
diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 839efeb..f025170 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -1,7 +1,7 @@
-menuconfig USB
+menuconfig USB_DRIVERS
 	bool "USB support                   "

-if USB
+if USB_DRIVERS

 config USB_EHCI
 	bool "EHCI driver"
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 57d0bed..541f09d 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,4 +1,4 @@
-obj-$(CONFIG_USB)		+= usb.o
+obj-y				+= usb.o
 obj-$(CONFIG_USB_EHCI)		+= usb_ehci_core.o
 obj-$(CONFIG_USB_ULPI)		+= ulpi.o
 obj-$(CONFIG_USB_ISP1504)	+= isp1504.o
diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
index 804bb91..dde96c9 100644
--- a/drivers/usb/gadget/Makefile
+++ b/drivers/usb/gadget/Makefile
@@ -1,5 +1,4 @@
-
-obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o
-obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o f_acm.o
-obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
+obj-y += composite.o config.o usbstring.o epautoconf.o
+obj-$(CONFIG_USB_GADGET_SERIAL)	+= u_serial.o serial.o f_serial.o f_acm.o
+obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
 obj-$(CONFIG_USB_GADGET_DRIVER_ARC) += fsl_udc.o
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index dbdc7e2..345e449 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -1,9 +1,9 @@
-menuconfig VIDEO
+menuconfig VIDEO_DRIVERS
 	bool "Video drivers                 "
 	help
 	  Add support for framebuffer and splash screens

-if VIDEO
+if VIDEO_DRIVERS

 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 1e0d1b9..b6e17c5 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,3 +1,3 @@
-obj-$(CONFIG_VIDEO)	+= fb.o
-obj-$(CONFIG_DRIVER_VIDEO_IMX)	+= imx.o
-obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
+obj-y					+= fb.o
+obj-$(CONFIG_DRIVER_VIDEO_IMX)		+= imx.o
+obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU)	+= imx-ipu-fb.o

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
