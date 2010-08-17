Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlHky-0001Ob-7S
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 08:42:52 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 17 Aug 2010 10:42:43 +0200
Message-Id: <1282034563-9842-1-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-14-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-14-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] beagle: defconfig cleanup for v2010.08.0
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/configs/omap3530_beagle_defconfig |   26 +++++++++++++-------------
 1 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 9f9a875..2383c63 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -1,7 +1,7 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2010.06.0
-# Wed Jun 23 14:18:59 2010
+# barebox version: 2010.08.0
+# Tue Aug 10 18:52:24 2010
 #
 # CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
@@ -15,6 +15,7 @@ CONFIG_ARM=y
 # CONFIG_ARCH_EP93XX is not set
 # CONFIG_ARCH_IMX is not set
 # CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_NOMADIK is not set
 CONFIG_ARCH_OMAP=y
 # CONFIG_ARCH_S3C24xx is not set
 
@@ -35,8 +36,6 @@ CONFIG_BOARDINFO="Texas Instrument's Beagle"
 # OMAP Features
 #
 CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CONFIG_STACKSIZE=0x00008000
-CONFIG_OMAP_MALLOC_LEN=0x00008000
 CONFIG_OMAP_CLOCK_ALL=y
 CONFIG_OMAP_CLOCK_SOURCE_S32K=y
 CONFIG_OMAP3_CLOCK_CONFIG=y
@@ -51,13 +50,6 @@ CONFIG_GPIO=y
 CONFIG_MACH_BEAGLE=y
 # CONFIG_MACH_OMAP3EVM is not set
 CONFIG_HAS_OMAP_NAND=y
-CONFIG_MACH_OMAP_GPMC_NAND=y
-CONFIG_MACH_OMAP_GPMC_GENERICNAND=y
-# CONFIG_MACH_OMAP_GPMC_GENERICNAND_LP_X8 is not set
-CONFIG_MACH_OMAP_GPMC_GENERICNAND_LP_X16=y
-# CONFIG_MACH_OMAP_GPMC_GENERICNAND_SP_X8 is not set
-# CONFIG_MACH_OMAP_GPMC_GENERICNAND_SP_X16 is not set
-CONFIG_MACH_OMAP_CS=0x0
 CONFIG_AEABI=y
 
 #
@@ -70,6 +62,7 @@ CONFIG_HAS_KALLSYMS=y
 CONFIG_HAS_MODULES=y
 CONFIG_CMD_MEMORY=y
 CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
 
 #
 # General Settings
@@ -170,6 +163,7 @@ CONFIG_CMD_LOADB=y
 # flash
 #
 CONFIG_CMD_FLASH=y
+# CONFIG_CMD_UBI is not set
 
 #
 # booting
@@ -186,14 +180,17 @@ CONFIG_CMD_TEST=y
 CONFIG_CMD_VERSION=y
 CONFIG_CMD_HELP=y
 CONFIG_CMD_DEVINFO=y
+# CONFIG_CMD_GPIO is not set
 CONFIG_CMD_UNLZO=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_RARP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+# CONFIG_NET_TFTP_PUSH is not set
+# CONFIG_NET_NETCONSOLE is not set
+# CONFIG_NET_RESOLV is not set
 
 #
 # Drivers
@@ -222,6 +219,7 @@ CONFIG_NET_USB_ASIX=y
 CONFIG_I2C=y
 CONFIG_DRIVER_I2C_OMAP=y
 # CONFIG_DRIVER_I2C_MC13892 is not set
+# CONFIG_DRIVER_I2C_MC34704 is not set
 # CONFIG_DRIVER_I2C_MC9SDZ60 is not set
 # CONFIG_DRIVER_I2C_LP3972 is not set
 CONFIG_DRIVER_I2C_TWL4030=y
@@ -230,15 +228,17 @@ CONFIG_DRIVER_I2C_TWL4030=y
 # flash drivers
 #
 # CONFIG_DRIVER_CFI is not set
+CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
-# CONFIG_NAND_OMAP_GPMC_HWECC is not set
 # CONFIG_MTD_NAND_VERIFY_WRITE is not set
 # CONFIG_MTD_NAND_ECC_SMC is not set
 CONFIG_MTD_NAND_IDS=y
+# CONFIG_UBI is not set
 # CONFIG_ATA is not set
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
+CONFIG_USB_EHCI_OMAP=y
 # CONFIG_USB_ISP1504 is not set
 CONFIG_USB_TWL4030=y
 # CONFIG_USB_GADGET is not set
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
