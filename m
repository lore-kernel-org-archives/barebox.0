Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwSO-00088J-KQ
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:26:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 May 2020 08:25:26 +0200
Message-Id: <20200508062530.23241-1-a.fatoum@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] drivers: explicitly select dependency STMP_DEVICE for
 i.MX23/28 drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some of the i.MXs drivers can be build tested even if building for other
platforms. Support adding a future COMPILE_TEST dependency to some of
these drivers by explicitly having their Kconfig symbol select STMP_DEVICE
if the driver calls stmp_reset_block.

This has not been necessary for the normal build, because the ARCH
symbols for the IMX23 and IMX28 already selected STMP_DEVICE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/Kconfig      | 1 +
 drivers/mtd/nand/Kconfig | 1 +
 drivers/pwm/Kconfig      | 1 +
 drivers/serial/Kconfig   | 1 +
 drivers/spi/Kconfig      | 1 +
 5 files changed, 5 insertions(+)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index d1a42e459d04..ffb265e0dfbc 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -54,6 +54,7 @@ config MCI_DW_PIO
 config MCI_MXS
 	bool "i.MX23/i.MX28"
 	depends on ARCH_MXS
+	select STMP_DEVICE
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  i.MX23/i.MX28 based system.
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 3c5da4a40cce..f93f7e504b4f 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -74,6 +74,7 @@ config NAND_IMX
 config NAND_MXS
 	bool
 	select NAND_BBT
+	select STMP_DEVICE
 	prompt "i.MX23/28/6 NAND driver"
 	depends on MXS_APBH_DMA
 
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 9268aac9122a..f4aead19fd26 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -25,6 +25,7 @@ config PWM_IMX
 config PWM_MXS
 	bool "i.MXs PWM Support"
 	depends on ARCH_MXS
+	select STMP_DEVICE
 	help
 	  This enables PWM support for Freescale i.MX23/i.MX28 SoCs
 
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index bd02fe2137c4..14cd430ee489 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -48,6 +48,7 @@ config DRIVER_SERIAL_STM378X
 
 config DRIVER_SERIAL_AUART
 	depends on ARCH_MXS
+	select STMP_DEVICE
 	bool "i.MX23/i.MX28 application UART serial driver"
 
 config DRIVER_SERIAL_LINUX_CONSOLE
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index a53b961b89be..323d93efeb1a 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -77,6 +77,7 @@ config DRIVER_SPI_IMX_2_3
 config DRIVER_SPI_MXS
 	bool "i.MX (23,28) SPI Master driver"
 	depends on ARCH_IMX28
+	select STMP_DEVICE
 
 config DRIVER_SPI_MVEBU
 	bool "Marvell MVEBU SoC SPI master driver"
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
