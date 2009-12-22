Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN5ge-0005M0-Iu
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 14:26:12 +0000
Received: from cpe00142a336e11-cm001ac318e826.cpe.net.cable.rogers.com
	([174.113.191.234] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NN5gY-0005zB-L1
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 09:26:02 -0500
Date: Tue, 22 Dec 2009 09:25:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912220923160.3291@localhost>
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
Subject: [PATCH] drivers:  use "menuconfig" consistently for all
 selections.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Use the "menuconfig" directive to make all top-level driver choices
1-touch selectable, and standardize the menuconfig names.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  as you can see, this is just a cleanup to use "menuconfig" for all
of the drivers submenus.  feel free to test this to make sure i didn't
break anything, or suggest different defaults for any of those
choices.

  this takes care of just the "drivers" submenu.  if there are no
objections, i'd like to do this elsewhere where it makes sense.


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


rday
--

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
