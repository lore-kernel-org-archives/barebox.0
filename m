Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001Ky-P7
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:10 +0100
Message-Id: <1261151305-18627-22-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-21-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/36] pcm043: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/pcm043_defconfig |  114 ++++++++++++++++++++++++-------------
 1 files changed, 74 insertions(+), 40 deletions(-)

diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index c4df354..5563356 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -1,61 +1,84 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc8
-# Fri Apr 17 13:27:24 2009
+# barebox version: 2009.12.0-pre
+# Fri Dec 18 16:42:27 2009
 #
-CONFIG_ARCH_TEXT_BASE=0x87f00000
-CONFIG_BOARDINFO="Phytec phyCORE-i.MX35"
 # CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
 CONFIG_ARM=y
-# CONFIG_MACH_MX1ADS is not set
-# CONFIG_MACH_SCB9328 is not set
-# CONFIG_MACH_PCM038 is not set
-# CONFIG_MACH_IMX21ADS is not set
-# CONFIG_MACH_IMX27ADS is not set
-CONFIG_MACH_PCM043=y
-# CONFIG_MACH_FREESCALE_MX35_3STACK is not set
-# CONFIG_MACH_ECO920 is not set
-# CONFIG_MACH_NXDB500 is not set
-# CONFIG_MACH_PCM037 is not set
-# CONFIG_MACH_OMAP is not set
-# CONFIG_MACH_AT91SAM9260EK is not set
-# CONFIG_MACH_PM9263 is not set
-# CONFIG_MACH_PCA100 is not set
 
 #
-# Board specific settings       
+# System Type
 #
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
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0x87f00000
+CONFIG_BOARDINFO="Phytec phyCORE-i.MX35"
 CONFIG_ARCH_HAS_FEC_IMX=y
+# CONFIG_ARCH_IMX_INTERNAL_BOOT is not set
+
+#
+# Freescale i.MX System-on-Chip
+#
+# CONFIG_ARCH_IMX1 is not set
+# CONFIG_ARCH_IMX21 is not set
+# CONFIG_ARCH_IMX25 is not set
+# CONFIG_ARCH_IMX27 is not set
+# CONFIG_ARCH_IMX31 is not set
 CONFIG_ARCH_IMX35=y
+# CONFIG_MACH_FREESCALE_MX35_3STACK is not set
+CONFIG_MACH_PCM043=y
+
+#
+# Board specific settings
+#
+CONFIG_PCM043_DISPLAY_SHARP=y
+# CONFIG_PCM043_DISPLAY_TY090 is not set
 
 #
-# i.MX specific settings        
+# i.MX specific settings
 #
 # CONFIG_IMX_CLKO is not set
+# CONFIG_AEABI is not set
 
 #
-# Arm specific settings         
+# Arm specific settings
 #
 CONFIG_CMD_ARM_CPUINFO=y
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
 CONFIG_LOCALVERSION_AUTO=y
 
 #
-# memory layout                 
+# memory layout
 #
+CONFIG_HAVE_MMU=y
+# CONFIG_MMU is not set
 CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x87F00000
 CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
@@ -89,7 +112,7 @@ CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pcm043/env/"
 
 #
-# Debugging                     
+# Debugging
 #
 # CONFIG_DEBUG_INFO is not set
 # CONFIG_ENABLE_FLASH_NOISE is not set
@@ -97,11 +120,11 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pcm043/env/"
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
@@ -114,7 +137,7 @@ CONFIG_CMD_TRUE=y
 CONFIG_CMD_FALSE=y
 
 #
-# file commands                 
+# file commands
 #
 CONFIG_CMD_LS=y
 CONFIG_CMD_RM=y
@@ -128,13 +151,13 @@ CONFIG_CMD_MOUNT=y
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
@@ -142,17 +165,19 @@ CONFIG_CMD_CRC=y
 # CONFIG_CMD_MTEST is not set
 
 #
-# flash                         
+# flash
 #
 CONFIG_CMD_FLASH=y
 
 #
-# booting                       
+# booting
 #
 CONFIG_CMD_BOOTM=y
 # CONFIG_CMD_BOOTM_ZLIB is not set
 # CONFIG_CMD_BOOTM_BZLIB is not set
 # CONFIG_CMD_BOOTM_SHOW_TYPE is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
@@ -161,50 +186,59 @@ CONFIG_CMD_TEST=y
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
 CONFIG_MIIPHY=y
 
 #
-# Network drivers               
+# Network drivers
 #
 # CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
 
 #
-# SPI drivers                   
+# SPI drivers
 #
 # CONFIG_SPI is not set
+# CONFIG_I2C is not set
 
 #
-# flash drivers                 
+# flash drivers
 #
 CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_NEW is not set
 CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
+CONFIG_NAND=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BOOT=y
+# CONFIG_MTD_NAND_VERIFY_WRITE is not set
+# CONFIG_MTD_NAND_ECC_SMC is not set
+CONFIG_MTD_NAND_IDS=y
 # CONFIG_USB is not set
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
