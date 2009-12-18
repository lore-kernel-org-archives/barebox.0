Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001L8-OO
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:23 +0100
Message-Id: <1261151305-18627-35-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-34-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-8-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-10-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-11-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-12-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-13-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-14-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-15-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-16-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-17-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-18-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-19-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-20-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-21-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-22-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-23-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-24-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-25-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-26-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-27-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-28-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-29-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-30-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-31-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-32-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-33-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-34-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 34/36] omap3_evm: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/omap3_evm_defconfig |   27 +++++++++++++++++++++++----
 1 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
index 99d1198..abf60e6 100644
--- a/arch/arm/configs/omap3_evm_defconfig
+++ b/arch/arm/configs/omap3_evm_defconfig
@@ -1,15 +1,22 @@
 #
 # Automatically generated make config: don't edit
-# U-Boot version: 2.0.0-rc10
-# Mon Dec 14 16:16:09 2009
+# barebox version: 2009.12.0-pre
+# Fri Dec 18 16:39:27 2009
 #
+# CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
 CONFIG_ARM=y
 
 #
 # System Type
 #
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_AT91RM9200 is not set
+# CONFIG_ARCH_IMX is not set
+# CONFIG_ARCH_NETX is not set
 CONFIG_ARCH_OMAP=y
+# CONFIG_ARCH_S3C24xx is not set
+
 #
 # Processor Type
 #
@@ -20,7 +27,6 @@ CONFIG_CPU_32v7=y
 #
 # processor features
 #
-CONFIG_ARCH_TEXT_BASE=0x80e80000
 CONFIG_BOARDINFO="Texas Instrument's OMAP3EVM"
 
 #
@@ -38,10 +44,13 @@ CONFIG_GPMC=y
 #
 # OMAP Platform Features
 #
+# CONFIG_MACH_OMAP343xSDP is not set
+# CONFIG_MACH_BEAGLE is not set
 CONFIG_MACH_OMAP3EVM=y
 CONFIG_OMAP3EVM_UART1=y
 # CONFIG_OMAP3EVM_UART3 is not set
 CONFIG_HAS_OMAP_NAND=y
+# CONFIG_MACH_OMAP_GPMC_NAND is not set
 CONFIG_AEABI=y
 
 #
@@ -52,6 +61,7 @@ CONFIG_CMD_ARM_CPUINFO=y
 # CONFIG_SETUP_MEMORY_TAGS is not set
 # CONFIG_INITRD_TAG is not set
 # CONFIG_CPU_V7_DCACHE_SKIP is not set
+# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
 CONFIG_HAS_KALLSYMS=y
 CONFIG_HAS_MODULES=y
 # CONFIG_CMD_MEMORY is not set
@@ -152,6 +162,7 @@ CONFIG_CMD_MEMINFO=y
 #
 # flash
 #
+# CONFIG_CMD_FLASH is not set
 
 #
 # booting
@@ -175,6 +186,7 @@ CONFIG_CMD_DEVINFO=y
 #
 # serial drivers
 #
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 
@@ -182,11 +194,17 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # SPI drivers
 #
 # CONFIG_SPI is not set
+# CONFIG_I2C is not set
 
 #
 # flash drivers
 #
-
+# CONFIG_DRIVER_CFI is not set
+CONFIG_DRIVER_CFI_OLD=y
+# CONFIG_NAND is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
 
 #
 # Filesystem support
@@ -195,3 +213,4 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_FS_RAMFS=y
 CONFIG_FS_DEVFS=y
 CONFIG_CRC16=y
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
