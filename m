Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OvAIy-0007jC-3f
	for barebox@lists.infradead.org; Mon, 13 Sep 2010 14:46:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 13 Sep 2010 16:45:42 +0200
Message-Id: <1284389143-23630-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] i2c rename CONFIG_DRIVER_I2C_xx to CONFIG_I2C_xx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    4 ++--
 arch/arm/configs/eukrea_cpuimx27_defconfig        |    8 ++++----
 arch/arm/configs/freescale_mx35_3stack_defconfig  |    6 +++---
 arch/arm/configs/mmccpu_defconfig                 |    4 ++--
 arch/arm/configs/omap3530_beagle_defconfig        |   12 ++++++------
 arch/arm/mach-imx/Kconfig                         |    8 ++++----
 drivers/i2c/Kconfig                               |   14 +++++++-------
 drivers/i2c/Makefile                              |   14 +++++++-------
 8 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 1937d21..4a90ed2 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -342,14 +342,14 @@ console_initcall(eukrea_cpuimx27_console_init);
 
 static int eukrea_cpuimx27_late_init(void)
 {
-#ifdef CONFIG_DRIVER_I2C_LP3972
+#ifdef CONFIG_I2C_LP3972
 	struct i2c_client *client;
 	u8 reg[1];
 #endif
 	console_flush();
 	register_device(&fec_dev);
 
-#ifdef CONFIG_DRIVER_I2C_LP3972
+#ifdef CONFIG_I2C_LP3972
 	client = lp3972_get_client();
 	if (!client)
 		return -ENODEV;
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 13df567..16f5206 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -233,10 +233,10 @@ CONFIG_DRIVER_NET_FEC_IMX=y
 #
 # CONFIG_SPI is not set
 CONFIG_I2C=y
-CONFIG_DRIVER_I2C_IMX=y
-# CONFIG_DRIVER_I2C_MC13892 is not set
-# CONFIG_DRIVER_I2C_MC9SDZ60 is not set
-CONFIG_DRIVER_I2C_LP3972=y
+CONFIG_I2C_IMX=y
+# CONFIG_I2C_MC13892 is not set
+# CONFIG_I2C_MC9SDZ60 is not set
+CONFIG_I2C_LP3972=y
 
 #
 # flash drivers                 
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index ff3ba6a..98eca3b 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -216,9 +216,9 @@ CONFIG_DRIVER_NET_FEC_IMX=y
 #
 # CONFIG_SPI is not set
 CONFIG_I2C=y
-CONFIG_DRIVER_I2C_IMX=y
-CONFIG_DRIVER_I2C_MC13892=y
-CONFIG_DRIVER_I2C_MC9SDZ60=y
+CONFIG_I2C_IMX=y
+CONFIG_I2C_MC13892=y
+CONFIG_I2C_MC9SDZ60=y
 
 #
 # flash drivers                 
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index e196a0c..7562195 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -203,8 +203,8 @@ CONFIG_DRIVER_NET_MACB=y
 #
 # CONFIG_SPI is not set
 CONFIG_I2C=y
-# CONFIG_DRIVER_I2C_MC13892 is not set
-# CONFIG_DRIVER_I2C_MC9SDZ60 is not set
+# CONFIG_I2C_MC13892 is not set
+# CONFIG_I2C_MC9SDZ60 is not set
 
 #
 # flash drivers
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 41b8d87..ff41d66 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -217,12 +217,12 @@ CONFIG_NET_USB_ASIX=y
 #
 # CONFIG_SPI is not set
 CONFIG_I2C=y
-CONFIG_DRIVER_I2C_OMAP=y
-# CONFIG_DRIVER_I2C_MC13892 is not set
-# CONFIG_DRIVER_I2C_MC34704 is not set
-# CONFIG_DRIVER_I2C_MC9SDZ60 is not set
-# CONFIG_DRIVER_I2C_LP3972 is not set
-CONFIG_DRIVER_I2C_TWL4030=y
+CONFIG_I2C_OMAP=y
+# CONFIG_I2C_MC13892 is not set
+# CONFIG_I2C_MC34704 is not set
+# CONFIG_I2C_MC9SDZ60 is not set
+# CONFIG_I2C_LP3972 is not set
+CONFIG_I2C_TWL4030=y
 
 #
 # flash drivers
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 24d2684..db90304 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -143,7 +143,7 @@ config MACH_FREESCALE_MX25_3STACK
 	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
-	select DRIVER_I2C_MC34704
+	select I2C_MC34704
 	help
 	  Say Y here if you are using the Freescale MX25 3stack board equipped
 	  with a Freescale i.MX25 Processor
@@ -253,9 +253,9 @@ config MACH_FREESCALE_MX35_3STACK
 	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
-	select DRIVER_I2C_IMX
-	select DRIVER_I2C_MC13892
-	select DRIVER_I2C_MC9SDZ60
+	select I2C_IMX
+	select I2C_MC13892
+	select I2C_MC9SDZ60
 	help
 	  Say Y here if you are using the Freescale MX35 3stack board equipped
 	  with a Freescale i.MX35 Processor
diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index 66a7cf7..a6138aa 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -3,27 +3,27 @@ menuconfig I2C
 
 if I2C
 
-config DRIVER_I2C_IMX
+config I2C_IMX
 	bool "i.MX I2C Master driver"
 	depends on ARCH_IMX
 
-config DRIVER_I2C_OMAP
+config I2C_OMAP
 	bool "OMAP I2C Master driver"
 	depends on ARCH_OMAP
 
-config DRIVER_I2C_MC13892
+config I2C_MC13892
 	bool "MC13892 a.k.a. PMIC driver"
 
-config DRIVER_I2C_MC34704
+config I2C_MC34704
 	bool "MC34704 PMIC driver"
 
-config DRIVER_I2C_MC9SDZ60
+config I2C_MC9SDZ60
 	bool "MC9SDZ60 driver"
 
-config DRIVER_I2C_LP3972
+config I2C_LP3972
 	bool "LP3972 driver"
 
-config DRIVER_I2C_TWL4030
+config I2C_TWL4030
 	bool "TWL4030 driver"
 	select GPIO
 
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 7d07cf0..daa79dd 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1,10 +1,10 @@
 obj-$(CONFIG_I2C) += i2c.o
 
-obj-$(CONFIG_DRIVER_I2C_IMX) += i2c-imx.o
-obj-$(CONFIG_DRIVER_I2C_OMAP) += i2c-omap.o
+obj-$(CONFIG_I2C_IMX) += i2c-imx.o
+obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
 
-obj-$(CONFIG_DRIVER_I2C_MC13892) += mc13892.o
-obj-$(CONFIG_DRIVER_I2C_MC34704) += mc34704.o
-obj-$(CONFIG_DRIVER_I2C_MC9SDZ60) += mc9sdz60.o
-obj-$(CONFIG_DRIVER_I2C_LP3972) += lp3972.o
-obj-$(CONFIG_DRIVER_I2C_TWL4030) += twl4030.o
+obj-$(CONFIG_I2C_MC13892) += mc13892.o
+obj-$(CONFIG_I2C_MC34704) += mc34704.o
+obj-$(CONFIG_I2C_MC9SDZ60) += mc9sdz60.o
+obj-$(CONFIG_I2C_LP3972) += lp3972.o
+obj-$(CONFIG_I2C_TWL4030) += twl4030.o
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
