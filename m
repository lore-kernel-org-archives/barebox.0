Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001Kv-Pw
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:07 +0100
Message-Id: <1261151305-18627-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-18-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/36] mx27ads: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/mx27ads_defconfig |  113 ++++++++++++++++++++++++-----------
 1 files changed, 77 insertions(+), 36 deletions(-)

diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/mx27ads_defconfig
index d40fbd2..71880c0 100644
--- a/arch/arm/configs/mx27ads_defconfig
+++ b/arch/arm/configs/mx27ads_defconfig
@@ -1,46 +1,82 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc5-git
-# Thu Aug 21 16:59:40 2008
+# barebox version: 2.0.0-rc10
+# Fri Dec 18 11:48:21 2009
 #
-CONFIG_ARCH_TEXT_BASE=0xa0000000
-CONFIG_BOARDINFO="Freescale i.MX27 ADS"
 # CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
 CONFIG_ARM=y
-CONFIG_CPU_ARM926T=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_AT91RM9200 is not set
 CONFIG_ARCH_IMX=y
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_OMAP is not set
+# CONFIG_ARCH_S3C24xx is not set
+
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_ARM926T=y
+CONFIG_CPU_32v5=y
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0xa0000000
+CONFIG_BOARDINFO="Freescale i.MX27 ADS"
+CONFIG_ARCH_HAS_FEC_IMX=y
+
+#
+# Freescale i.MX System-on-Chip
+#
+# CONFIG_ARCH_IMX1 is not set
+# CONFIG_ARCH_IMX21 is not set
+# CONFIG_ARCH_IMX25 is not set
 CONFIG_ARCH_IMX27=y
-# CONFIG_MACH_MX1ADS is not set
-# CONFIG_MACH_SCB9328 is not set
-# CONFIG_MACH_PCM038 is not set
+# CONFIG_ARCH_IMX31 is not set
+# CONFIG_ARCH_IMX35 is not set
+# CONFIG_MACH_EUKREA_CPUIMX27 is not set
 CONFIG_MACH_IMX27ADS=y
-# CONFIG_MACH_ECO920 is not set
-# CONFIG_MACH_NXDB500 is not set
-# CONFIG_MACH_PCM037 is not set
-# CONFIG_MACH_OMAP is not set
-# CONFIG_MACH_AT91SAM9260EK is not set
-# CONFIG_MACH_PM9263 is not set
+# CONFIG_MACH_PCA100 is not set
+# CONFIG_MACH_PCM038 is not set
+
+#
+# Board specific settings
+#
+
+#
+# i.MX specific settings
+#
 CONFIG_IMX_CLKO=y
+# CONFIG_AEABI is not set
 
 #
-# Arm specific settings         
+# Arm specific settings
 #
+CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_CMDLINE_TAG=y
 CONFIG_SETUP_MEMORY_TAGS=y
 # CONFIG_INITRD_TAG is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_GREGORIAN_CALENDER=y
 CONFIG_HAS_KALLSYMS=y
 CONFIG_HAS_MODULES=y
 CONFIG_CMD_MEMORY=y
 CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
 
 #
-# General Settings              
+# General Settings
 #
+CONFIG_LOCALVERSION_AUTO=y
 
 #
-# memory layout                 
+# memory layout
 #
 CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0xa7f00000
@@ -75,7 +111,7 @@ CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="board/imx27ads/env"
 
 #
-# Debugging                     
+# Debugging
 #
 # CONFIG_DEBUG_INFO is not set
 # CONFIG_ENABLE_FLASH_NOISE is not set
@@ -83,11 +119,11 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="board/imx27ads/env"
 # CONFIG_ENABLE_DEVICE_NOISE is not set
 
 #
-# Commands                      
+# Commands
 #
 
 #
-# scripting                     
+# scripting
 #
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
@@ -100,7 +136,7 @@ CONFIG_CMD_TRUE=y
 CONFIG_CMD_FALSE=y
 
 #
-# file commands                 
+# file commands
 #
 CONFIG_CMD_LS=y
 CONFIG_CMD_RM=y
@@ -114,13 +150,13 @@ CONFIG_CMD_MOUNT=y
 CONFIG_CMD_UMOUNT=y
 
 #
-# console                       
+# console
 #
 CONFIG_CMD_CLEAR=y
 CONFIG_CMD_ECHO=y
 
 #
-# memory                        
+# memory
 #
 # CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
@@ -129,18 +165,19 @@ CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 
 #
-# flash                         
+# flash
 #
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_NAND is not set
 
 #
-# booting                       
+# booting
 #
 CONFIG_CMD_BOOTM=y
 # CONFIG_CMD_BOOTM_ZLIB is not set
 # CONFIG_CMD_BOOTM_BZLIB is not set
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
@@ -149,41 +186,42 @@ CONFIG_CMD_TEST=y
 CONFIG_CMD_VERSION=y
 CONFIG_CMD_HELP=y
 CONFIG_CMD_DEVINFO=y
+CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_BOOTP=y
 CONFIG_NET_DHCP=y
 # CONFIG_NET_RARP is not set
-# CONFIG_NET_SNTP is not set
 # CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 
 #
-# Drivers                       
+# Drivers
 #
 
 #
-# serial drivers                
+# serial drivers
 #
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
 
 #
-# Network drivers               
+# Network drivers
 #
 # CONFIG_DRIVER_NET_SMC911X is not set
-CONFIG_DRIVER_NET_IMX27=y
+# CONFIG_DRIVER_NET_SMC91111 is not set
+# CONFIG_DRIVER_NET_FEC_IMX is not set
 
 #
-# SPI drivers                   
+# SPI drivers
 #
 CONFIG_SPI=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_DRIVER_SPI_MC13783=y
+# CONFIG_I2C is not set
 
 #
-# flash drivers                 
+# flash drivers
 #
 CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
@@ -196,9 +234,12 @@ CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
 # CONFIG_NAND is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
 
 #
-# Filesystem support            
+# Filesystem support
 #
 # CONFIG_FS_CRAMFS is not set
 CONFIG_FS_RAMFS=y
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
