Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp19.mail.ru ([94.100.176.156])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6ayW-0003s5-Uf
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 06:10:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 16 Feb 2013 10:10:08 +0400
Message-Id: <1360995008-23475-1-git-send-email-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mfd: Using MFD_xx prefix for symbols
To: barebox@lists.infradead.org

This patch provides rename MFD-related symbols for using MFD-prefix.
Additionally, sorting mfd/Kconfig and mfd/Makefile records.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  4 ++--
 arch/arm/configs/archosg9_defconfig               |  4 ++--
 arch/arm/configs/eukrea_cpuimx27_defconfig        |  2 +-
 arch/arm/configs/omap3530_beagle_defconfig        |  2 +-
 arch/arm/configs/pcm049_defconfig                 |  2 +-
 arch/arm/mach-imx/Kconfig                         |  4 ++--
 arch/arm/mach-omap/Makefile                       |  2 +-
 drivers/gpio/Kconfig                              |  2 +-
 drivers/mci/Makefile                              |  2 +-
 drivers/mci/omap_hsmmc.c                          |  4 ++--
 drivers/mfd/Kconfig                               | 26 +++++++++++------------
 drivers/mfd/Makefile                              | 18 ++++++++--------
 drivers/usb/otg/Kconfig                           |  2 +-
 include/mfd/mc34704.h                             |  6 +++---
 include/mfd/twl-core.h                            |  6 +++---
 include/mfd/twl4030.h                             |  6 +++---
 include/mfd/twl6030.h                             |  6 +++---
 17 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 65b6c44..d690581 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -230,14 +230,14 @@ console_initcall(eukrea_cpuimx27_console_init);
 
 static int eukrea_cpuimx27_late_init(void)
 {
-#ifdef CONFIG_I2C_LP3972
+#ifdef CONFIG_MFD_LP3972
 	struct i2c_client *client;
 	u8 reg[1];
 #endif
 	console_flush();
 	imx27_add_fec(&fec_info);
 
-#ifdef CONFIG_I2C_LP3972
+#ifdef CONFIG_MFD_LP3972
 	client = lp3972_get_client();
 	if (!client)
 		return -ENODEV;
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 9a051da..452d2ec 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -59,8 +59,8 @@ CONFIG_BAUDRATE=115200
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
-CONFIG_I2C_TWLCORE=y
-CONFIG_I2C_TWL6030=y
+CONFIG_MFD_TWLCORE=y
+CONFIG_MFD_TWL6030=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 880941d..c751d1c 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -45,7 +45,7 @@ CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
-CONFIG_I2C_LP3972=y
+CONFIG_MFD_LP3972=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_AMD is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 1807e04..e3eee8d 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -80,7 +80,7 @@ CONFIG_USB_TWL4030=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_I2C_TWL4030=y
+CONFIG_MFD_TWL4030=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/pcm049_defconfig b/arch/arm/configs/pcm049_defconfig
index 19df95a..80dbd71 100644
--- a/arch/arm/configs/pcm049_defconfig
+++ b/arch/arm/configs/pcm049_defconfig
@@ -64,7 +64,7 @@ CONFIG_USB=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_I2C_TWL6030=y
+CONFIG_MFD_TWL6030=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4115d35..4ab9767 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -247,7 +247,7 @@ config MACH_EUKREA_CPUIMX25
 config MACH_FREESCALE_MX25_3STACK
 	bool "Freescale MX25 3stack"
 	select I2C
-	select I2C_MC34704
+	select MFD_MC34704
 	help
 	  Say Y here if you are using the Freescale MX25 3stack board equipped
 	  with a Freescale i.MX25 Processor
@@ -354,7 +354,7 @@ config MACH_FREESCALE_MX35_3STACK
 	select I2C
 	select I2C_IMX
 	select MFD_MC13XXX
-	select I2C_MC9SDZ60
+	select MFD_MC9SDZ60
 	help
 	  Say Y here if you are using the Freescale MX35 3stack board equipped
 	  with a Freescale i.MX35 Processor
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 94e42c6..aaa0cea 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -28,6 +28,6 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_SHELL_NONE) += xload.o
-obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
+obj-$(CONFIG_MFD_TWL6030) += omap4_twl6030_mmc.o
 obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
 obj-y += gpio.o
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 977b426..895eb68 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -27,7 +27,7 @@ config GPIO_PL061
 	  Say yes here to support the PrimeCell PL061 GPIO device
 
 config GPIO_STMPE
-	depends on I2C_STMPE
+	depends on MFD_STMPE
 	bool "STMPE GPIO Expander"
 endmenu
 
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index b7bb846..d46d5f5 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_MCI_S3C) += s3c.o
 obj-$(CONFIG_MCI_IMX) += imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
 obj-$(CONFIG_MCI_OMAP_HSMMC) += omap_hsmmc.o
-obj-$(CONFIG_I2C_TWL6030) += twl6030.o
+obj-$(CONFIG_MFD_TWL6030) += twl6030.o
 obj-$(CONFIG_MCI_PXA) += pxamci.o
 obj-$(CONFIG_MCI_ATMEL) += atmel_mci.o
 obj-$(CONFIG_MCI_SPI) += mci_spi.o
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 336745d..b379c31 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -29,7 +29,7 @@
 
 #include <mach/omap_hsmmc.h>
 
-#if defined(CONFIG_I2C_TWL6030) && \
+#if defined(CONFIG_MFD_TWL6030) && \
 	defined(CONFIG_MCI_OMAP_HSMMC) && \
 	defined(CONFIG_ARCH_OMAP4)
 #include <mach/omap4_twl6030_mmc.h>
@@ -235,7 +235,7 @@ static int mmc_init_setup(struct mci_host *mci, struct device_d *dev)
  * It's necessary to do this here, because
  * you need to set up this at probetime.
  */
-#if defined(CONFIG_I2C_TWL6030) && \
+#if defined(CONFIG_MFD_TWL6030) && \
 	defined(CONFIG_MCI_OMAP_HSMMC) && \
 	defined(CONFIG_ARCH_OMAP4)
 	set_up_mmc_voltage_omap4();
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index a253de3..c506d67 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1,10 +1,14 @@
 menu MFD
 
+config MFD_LP3972
+	depends on I2C
+	bool "LP3972 driver"
+
 config MFD_MC13XXX
 	depends on I2C || SPI
 	bool "MC13XXX a.k.a. PMIC driver (MC13783, MC13892)"
 
-config I2C_MC34704
+config MFD_MC34704
 	depends on I2C
 	bool "MC34704 PMIC driver"
 
@@ -12,29 +16,25 @@ config MFD_MC34708
 	depends on I2C || SPI
 	bool "MC34708 PMIC driver"
 
-config I2C_MC9SDZ60
+config MFD_MC9SDZ60
 	depends on I2C
 	bool "MC9SDZ60 driver"
 
-config I2C_LP3972
+config MFD_STMPE
 	depends on I2C
-	bool "LP3972 driver"
+	bool "STMPE-i2c driver"
 
-config I2C_TWLCORE
+config MFD_TWLCORE
 	bool
 
-config I2C_TWL4030
+config MFD_TWL4030
 	depends on I2C
-	select I2C_TWLCORE
+	select MFD_TWLCORE
 	bool "TWL4030 driver"
 
-config I2C_TWL6030
+config MFD_TWL6030
 	depends on I2C
-	select I2C_TWLCORE
+	select MFD_TWLCORE
 	bool "TWL6030 driver"
 
-config I2C_STMPE
-	depends on I2C
-	bool "STMPE-i2c driver"
-
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index a242eaf..542fb0f 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -1,9 +1,9 @@
-obj-$(CONFIG_MFD_MC13XXX) += mc13xxx.o
-obj-$(CONFIG_I2C_MC34704) += mc34704.o
-obj-$(CONFIG_MFD_MC34708) += mc34708.o
-obj-$(CONFIG_I2C_MC9SDZ60) += mc9sdz60.o
-obj-$(CONFIG_I2C_LP3972) += lp3972.o
-obj-$(CONFIG_I2C_TWLCORE) += twl-core.o
-obj-$(CONFIG_I2C_TWL4030) += twl4030.o
-obj-$(CONFIG_I2C_TWL6030) += twl6030.o
-obj-$(CONFIG_I2C_STMPE) += stmpe-i2c.o
+obj-$(CONFIG_MFD_LP3972)	+= lp3972.o
+obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx.o
+obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
+obj-$(CONFIG_MFD_MC34708)	+= mc34708.o
+obj-$(CONFIG_MFD_MC9SDZ60)	+= mc9sdz60.o
+obj-$(CONFIG_MFD_STMPE)		+= stmpe-i2c.o
+obj-$(CONFIG_MFD_TWLCORE)	+= twl-core.o
+obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
+obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
diff --git a/drivers/usb/otg/Kconfig b/drivers/usb/otg/Kconfig
index 892c21e..2c9fb46 100644
--- a/drivers/usb/otg/Kconfig
+++ b/drivers/usb/otg/Kconfig
@@ -4,5 +4,5 @@ config USB_ULPI
 	  Support for transceivers that conforms ULPI specification.
 
 config USB_TWL4030
-	depends on I2C_TWL4030
+	depends on MFD_TWL4030
 	bool "TWL4030 Transceiver support"
diff --git a/include/mfd/mc34704.h b/include/mfd/mc34704.h
index a3723d7..c42546d 100644
--- a/include/mfd/mc34704.h
+++ b/include/mfd/mc34704.h
@@ -10,8 +10,8 @@
  *
  */
 
-#ifndef __I2C_MC34704_H
-#define __I2C_MC34704_H
+#ifndef __MFD_MC34704_H
+#define __MFD_MC34704_H
 
 struct mc34704 {
 	struct cdev		cdev;
@@ -23,4 +23,4 @@ extern struct mc34704 *mc34704_get(void);
 extern int mc34704_reg_read(struct mc34704 *mc34704, u8 reg, u8 *val);
 extern int mc34704_reg_write(struct mc34704 *mc34704, u8 reg, u8 val);
 
-#endif /* __I2C_MC34704_H */
+#endif /* __MFD_MC34704_H */
diff --git a/include/mfd/twl-core.h b/include/mfd/twl-core.h
index 2ab6169..f090032 100644
--- a/include/mfd/twl-core.h
+++ b/include/mfd/twl-core.h
@@ -9,8 +9,8 @@
  *
  */
 
-#ifndef __I2C_TWLCORE_H__
-#define __I2C_TWLCORE_H__
+#ifndef __MFD_TWLCORE_H__
+#define __MFD_TWLCORE_H__
 
 #include <common.h>
 #include <i2c/i2c.h>
@@ -27,4 +27,4 @@ extern int twlcore_reg_read(struct twlcore *twlcore, u16 reg, u8 *val);
 extern int twlcore_reg_write(struct twlcore *twlcore, u16 reg, u8 val);
 extern int twlcore_set_bits(struct twlcore *twlcore, u16 reg, u8 mask, u8 val);
 
-#endif /* __I2C_TWLCORE_H__ */
+#endif /* __MFD_TWLCORE_H__ */
diff --git a/include/mfd/twl4030.h b/include/mfd/twl4030.h
index bc54ea6..c045071 100644
--- a/include/mfd/twl4030.h
+++ b/include/mfd/twl4030.h
@@ -6,8 +6,8 @@
  *
  */
 
-#ifndef __I2C_TWL4030_H__
-#define __I2C_TWL4030_H__
+#ifndef __MFD_TWL4030_H__
+#define __MFD_TWL4030_H__
 
 #include <mfd/twl-core.h>
 
@@ -469,4 +469,4 @@ static inline int twl4030_set_bits(struct twl4030 *twl4030,
 	return twlcore_set_bits(&(twl4030->core), reg, mask, val);
 }
 
-#endif /* __I2C_TWL4030_H__ */
+#endif /* __MFD_TWL4030_H__ */
diff --git a/include/mfd/twl6030.h b/include/mfd/twl6030.h
index bb4f773..733a670 100644
--- a/include/mfd/twl6030.h
+++ b/include/mfd/twl6030.h
@@ -5,8 +5,8 @@
  *
  */
 
-#ifndef __I2C_TWL6030_H__
-#define __I2C_TWL6030_H__
+#ifndef __MFD_TWL6030_H__
+#define __MFD_TWL6030_H__
 
 #include <mfd/twl-core.h>
 
@@ -424,4 +424,4 @@ static inline int twl6030_set_bits(struct twl6030 *twl6030,
 	return twlcore_set_bits(&twl6030->core, reg, mask, val);
 }
 
-#endif /* __I2C_TWL6030_H__ */
+#endif /* __MFD_TWL6030_H__ */
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
