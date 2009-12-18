Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001L1-QL
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:05 +0100
Message-Id: <1261151305-18627-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/36] pcm037: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/pcm037_defconfig |  123 ++++++++++++++++++++++++++-----------
 1 files changed, 88 insertions(+), 35 deletions(-)

diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index b4fb2d9..e82733f 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -1,43 +1,80 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc5-git
-# Thu Jul  3 09:29:45 2008
+# barebox version: 2.0.0-rc10
+# Fri Dec 18 11:49:38 2009
 #
-CONFIG_ARCH_TEXT_BASE=0x87f00000
-CONFIG_BOARDINFO="Phytec phyCORE-i.MX31"
 # CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
 CONFIG_ARM=y
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
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0x87f00000
+CONFIG_BOARDINFO="Phytec phyCORE-i.MX31"
+
+#
+# Freescale i.MX System-on-Chip
+#
+# CONFIG_ARCH_IMX1 is not set
+# CONFIG_ARCH_IMX21 is not set
+# CONFIG_ARCH_IMX25 is not set
+# CONFIG_ARCH_IMX27 is not set
 CONFIG_ARCH_IMX31=y
-# CONFIG_MACH_MX1ADS is not set
-# CONFIG_MACH_SCB9328 is not set
-# CONFIG_MACH_PCM038 is not set
-# CONFIG_MACH_IMX27ADS is not set
-# CONFIG_MACH_ECO920 is not set
-# CONFIG_MACH_NXDB500 is not set
+# CONFIG_ARCH_IMX35 is not set
 CONFIG_MACH_PCM037=y
-# CONFIG_MACH_OMAP is not set
-# CONFIG_MACH_AT91SAM9260EK is not set
 
 #
-# Arm specific settings         
+# Board specific settings
+#
+CONFIG_PCM037_SDRAM_BANK0_128MB=y
+# CONFIG_PCM037_SDRAM_BANK0_256MB is not set
+CONFIG_PCM037_SDRAM_BANK1_NONE=y
+# CONFIG_PCM037_SDRAM_BANK1_128MB is not set
+# CONFIG_PCM037_SDRAM_BANK1_256MB is not set
+
+#
+# i.MX specific settings
+#
+# CONFIG_AEABI is not set
+
+#
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
 CONFIG_TEXT_BASE=0x87f00000
@@ -48,10 +85,10 @@ CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x400000
 # CONFIG_BROKEN is not set
 # CONFIG_EXPERIMENTAL is not set
+CONFIG_MACH_HAS_LOWLEVEL_INIT=y
+CONFIG_MACH_DO_LOWLEVEL_INIT=y
 CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=115200
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
 CONFIG_LONGHELP=y
 CONFIG_CBSIZE=1024
 CONFIG_MAXARGS=16
@@ -59,9 +96,12 @@ CONFIG_SHELL_HUSH=y
 # CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
 CONFIG_DYNAMIC_CRC_TABLE=y
 CONFIG_ERRNO_MESSAGES=y
 CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
 CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
@@ -69,7 +109,7 @@ CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pcm037/env"
 
 #
-# Debugging                     
+# Debugging
 #
 # CONFIG_DEBUG_INFO is not set
 # CONFIG_ENABLE_FLASH_NOISE is not set
@@ -77,11 +117,11 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pcm037/env"
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
@@ -89,11 +129,12 @@ CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_HELP=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
 
 #
-# file commands                 
+# file commands
 #
 CONFIG_CMD_LS=y
 CONFIG_CMD_RM=y
@@ -107,13 +148,13 @@ CONFIG_CMD_MOUNT=y
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
@@ -121,67 +162,79 @@ CONFIG_CMD_CRC=y
 # CONFIG_CMD_MTEST is not set
 
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
 # CONFIG_CMD_BOOTM_SHOW_TYPE is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
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
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
+# CONFIG_DRIVER_NET_SMC91111 is not set
 
 #
-# SPI drivers                   
+# SPI drivers
 #
 CONFIG_SPI=y
 # CONFIG_DRIVER_SPI_IMX is not set
 # CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_I2C is not set
 
 #
-# flash drivers                 
+# flash drivers
 #
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_NEW is not set
 CONFIG_DRIVER_CFI_OLD=y
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
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
 CONFIG_CRC32=y
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
