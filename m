Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4k-0001L3-EX
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:21 +0100
Message-Id: <1261151305-18627-33-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-32-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 32/36] sdp3430: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../configs/omap3430_sdp3430_per_uart_defconfig    |   67 +++++++++++++++-----
 1 files changed, 50 insertions(+), 17 deletions(-)

diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
index 81bd0c1..4501f5a 100644
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
@@ -1,23 +1,34 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc5-git
-# Wed Jun  4 13:18:29 2008
+# barebox version: 2.0.0-rc10
+# Fri Dec 18 11:48:53 2009
 #
-CONFIG_ARCH_TEXT_BASE=0x80e80000
-CONFIG_BOARDINFO="Texas Instrument's SDP343x"
 # CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
 CONFIG_ARM=y
-CONFIG_CPU_V7=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_AT91RM9200 is not set
+# CONFIG_ARCH_IMX is not set
+# CONFIG_ARCH_NETX is not set
 CONFIG_ARCH_OMAP=y
-# CONFIG_MACH_MX1ADS is not set
-# CONFIG_MACH_SCB9328 is not set
-# CONFIG_MACH_PCM038 is not set
-# CONFIG_MACH_IMX27ADS is not set
-# CONFIG_MACH_ECO920 is not set
-# CONFIG_MACH_NXDB500 is not set
-# CONFIG_MACH_PCM037 is not set
-CONFIG_MACH_OMAP=y
+# CONFIG_ARCH_S3C24xx is not set
+
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_V7=y
+CONFIG_CPU_32v7=y
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0x80e80000
+CONFIG_BOARDINFO="Texas Instrument's SDP343x"
 
 #
 # OMAP Features
@@ -29,20 +40,28 @@ CONFIG_OMAP_CLOCK_ALL=y
 CONFIG_OMAP_CLOCK_SOURCE_S32K=y
 CONFIG_OMAP3_CLOCK_CONFIG=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
+CONFIG_GPMC=y
 
 #
 # OMAP Platform Features
 #
 CONFIG_MACH_OMAP343xSDP=y
+# CONFIG_MACH_BEAGLE is not set
+# CONFIG_MACH_OMAP3EVM is not set
 # CONFIG_MACH_OMAP_ADVANCED_MUX is not set
+CONFIG_HAS_OMAP_NAND=y
+# CONFIG_MACH_OMAP_GPMC_NAND is not set
+# CONFIG_AEABI is not set
 
 #
 # Arm specific settings
 #
-# CONFIG_CMDLINE_TAG is not set
-# CONFIG_SETUP_MEMORY_TAGS is not set
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_CMDLINE_TAG=y
+CONFIG_SETUP_MEMORY_TAGS=y
 # CONFIG_INITRD_TAG is not set
 # CONFIG_CPU_V7_DCACHE_SKIP is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_HAS_KALLSYMS=y
 CONFIG_HAS_MODULES=y
 # CONFIG_CMD_MEMORY is not set
@@ -50,6 +69,7 @@ CONFIG_HAS_MODULES=y
 #
 # General Settings
 #
+CONFIG_LOCALVERSION_AUTO=y
 
 #
 # memory layout
@@ -70,15 +90,16 @@ CONFIG_MACH_DO_LOWLEVEL_INIT=y
 CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="X-load 343x> "
 CONFIG_BAUDRATE=115200
-# CONFIG_CMDLINE_EDITING is not set
 CONFIG_SIMPLE_READLINE=y
 CONFIG_LONGHELP=y
 CONFIG_CBSIZE=1024
 CONFIG_MAXARGS=16
 # CONFIG_SHELL_HUSH is not set
 CONFIG_SHELL_SIMPLE=y
+# CONFIG_CMDLINE_EDITING is not set
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_FULL=y
 CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 # CONFIG_PARTITION is not set
@@ -106,8 +127,9 @@ CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_LOADENV is not set
 # CONFIG_CMD_EXPORT is not set
 # CONFIG_CMD_PRINTENV is not set
-# CONFIG_CMD_HELP is not set
 # CONFIG_CMD_READLINE is not set
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
 
 #
 # file commands
@@ -146,10 +168,15 @@ CONFIG_CMD_LOADB=y
 # booting
 #
 # CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
 # CONFIG_CMD_RESET is not set
 CONFIG_CMD_GO=y
 # CONFIG_CMD_TIMEOUT is not set
 # CONFIG_CMD_PARTITION is not set
+CONFIG_CMD_VERSION=y
+# CONFIG_CMD_HELP is not set
+CONFIG_CMD_DEVINFO=y
 # CONFIG_NET is not set
 
 #
@@ -159,6 +186,7 @@ CONFIG_CMD_GO=y
 #
 # serial drivers
 #
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 
@@ -166,6 +194,7 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # SPI drivers
 #
 # CONFIG_SPI is not set
+# CONFIG_I2C is not set
 
 #
 # flash drivers
@@ -173,6 +202,9 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_DRIVER_CFI is not set
 # CONFIG_DRIVER_CFI_OLD is not set
 # CONFIG_NAND is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
 
 #
 # Filesystem support
@@ -181,3 +213,4 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
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
