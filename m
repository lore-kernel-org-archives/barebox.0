Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4e-0001L4-Pc
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:12 +0100
Message-Id: <1261151305-18627-24-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-23-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/36] netx: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/netx_nxdb500_defconfig |  103 +++++++++++++++++++-----------
 1 files changed, 65 insertions(+), 38 deletions(-)

diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index 5315333..95afb5e 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -1,35 +1,49 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc5-git
-# Thu Jul  3 09:34:20 2008
+# barebox version: 2.0.0-rc10
+# Fri Dec 18 11:48:29 2009
 #
-CONFIG_ARCH_TEXT_BASE=0x81f00000
-CONFIG_BOARDINFO="Hilscher Netx nxdb500"
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
+# CONFIG_ARCH_IMX is not set
 CONFIG_ARCH_NETX=y
-# CONFIG_MACH_MX1ADS is not set
-# CONFIG_MACH_SCB9328 is not set
-# CONFIG_MACH_PCM038 is not set
-# CONFIG_MACH_IMX27ADS is not set
-# CONFIG_MACH_ECO920 is not set
-CONFIG_MACH_NXDB500=y
-# CONFIG_MACH_PCM037 is not set
-# CONFIG_MACH_OMAP is not set
-# CONFIG_MACH_AT91SAM9260EK is not set
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
+CONFIG_ARCH_TEXT_BASE=0x81f00000
+CONFIG_BOARDINFO="Hilscher Netx nxdb500"
 CONFIG_NETX_SDRAM_CTRL=0x010D0121
 CONFIG_NETX_SDRAM_TIMING_CTRL=0x03C13261
 CONFIG_NETX_MEM_CTRL=0x0203030F
 CONFIG_NETX_COOKIE=32
+CONFIG_MACH_NXDB500=y
+# CONFIG_AEABI is not set
 
 #
-# Arm specific settings         
+# Arm specific settings
 #
+CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_CMDLINE_TAG=y
 CONFIG_SETUP_MEMORY_TAGS=y
 CONFIG_INITRD_TAG=y
+# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
 CONFIG_GREGORIAN_CALENDER=y
 CONFIG_HAS_KALLSYMS=y
 CONFIG_HAS_MODULES=y
@@ -37,11 +51,12 @@ CONFIG_CMD_MEMORY=y
 CONFIG_ENV_HANDLING=y
 
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
 CONFIG_TEXT_BASE=0x08f80000
@@ -57,8 +72,6 @@ CONFIG_MACH_HAS_LOWLEVEL_INIT=y
 CONFIG_MACH_DO_LOWLEVEL_INIT=y
 CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=115200
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
 CONFIG_LONGHELP=y
 CONFIG_CBSIZE=1024
 CONFIG_MAXARGS=16
@@ -66,16 +79,19 @@ CONFIG_SHELL_HUSH=y
 # CONFIG_SHELL_SIMPLE is not set
 # CONFIG_GLOB is not set
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
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 
 #
-# Debugging                     
+# Debugging
 #
 # CONFIG_DEBUG_INFO is not set
 # CONFIG_ENABLE_FLASH_NOISE is not set
@@ -83,11 +99,11 @@ CONFIG_PARTITION=y
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
@@ -95,11 +111,12 @@ CONFIG_CMD_SAVEENV=y
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
@@ -113,14 +130,13 @@ CONFIG_CMD_MOUNT=y
 CONFIG_CMD_UMOUNT=y
 
 #
-# console                       
+# console
 #
 CONFIG_CMD_CLEAR=y
 CONFIG_CMD_ECHO=y
-# CONFIG_CMD_SPLASH is not set
 
 #
-# memory                        
+# memory
 #
 # CONFIG_CMD_LOADB is not set
 # CONFIG_CMD_LOADS is not set
@@ -129,58 +145,63 @@ CONFIG_CMD_CRC=y
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
 CONFIG_DRIVER_SERIAL_NETX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_HAS_NETX_ETHER=y
 CONFIG_MIIPHY=y
 
 #
-# Network drivers               
+# Network drivers
 #
 # CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_NETX=y
 
 #
-# SPI drivers                   
+# SPI drivers
 #
 CONFIG_SPI=y
 # CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_I2C is not set
 
 #
-# flash drivers                 
+# flash drivers
 #
 CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
@@ -188,9 +209,15 @@ CONFIG_DRIVER_CFI=y
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
