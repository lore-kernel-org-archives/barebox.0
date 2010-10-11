Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5JkC-0005Hw-4L
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:52:53 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 16:52:26 +0200
Message-Id: <1286808746-19456-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
References: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/4] Adapt the defconfig for a full blown ChumbyOne support
To: barebox@lists.infradead.org

Make the ChumbyOne use of the MCI framework.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/configs/chumbyone_defconfig |  224 +++++++++++++++++++++++++++++++++-
 1 files changed, 223 insertions(+), 1 deletions(-)

diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index c21c7cd..277dbda 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -1,14 +1,122 @@
+#
+# Automatically generated make config: don't edit
+# Linux barebox version: 2010.10.0
+# Mon Oct 11 16:26:31 2010
+#
+# CONFIG_BOARD_LINKER_SCRIPT is not set
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_EP93XX is not set
+# CONFIG_ARCH_IMX is not set
 CONFIG_ARCH_STM=y
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_NOMADIK is not set
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
+CONFIG_ARCH_TEXT_BASE=0x42000000
+CONFIG_BOARDINFO="Chumby Falconwing"
+
+#
+# SigmaTel/Freescale i.MX System-on-Chip
+#
+CONFIG_ARCH_IMX23=y
+# CONFIG_MACH_MX23EVK is not set
 CONFIG_MACH_CHUMBY=y
+
+#
+# Board specific settings       
+#
 CONFIG_AEABI=y
+
+#
+# Arm specific settings         
+#
+CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
+
+#
+# General Settings              
+#
+CONFIG_LOCALVERSION_AUTO=y
+
+#
+# memory layout                 
+#
+CONFIG_HAVE_MMU=y
+# CONFIG_MMU is not set
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x42000000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x400000
 CONFIG_BROKEN=y
+# CONFIG_EXPERIMENTAL is not set
+# CONFIG_KALLSYMS is not set
+CONFIG_PROMPT="chumby:"
+CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+# CONFIG_GLOB is not set
+CONFIG_PROMPT_HUSH_PS2="> "
+# CONFIG_HUSH_FANCY_PROMPT is not set
+# CONFIG_HUSH_GETOPT is not set
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+# CONFIG_MENU is not set
+# CONFIG_PASSWORD is not set
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/chumby_falconwing/env"
+
+#
+# Debugging                     
+#
 CONFIG_DEBUG_INFO=y
+# CONFIG_ENABLE_FLASH_NOISE is not set
+# CONFIG_ENABLE_PARTITION_NOISE is not set
+# CONFIG_ENABLE_DEVICE_NOISE is not set
+
+#
+# Commands                      
+#
+
+#
+# scripting                     
+#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -16,10 +124,124 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+# CONFIG_CMD_LOGIN is not set
+# CONFIG_CMD_PASSWD is not set
+
+#
+# file commands                 
+#
+CONFIG_CMD_LS=y
+CONFIG_CMD_RM=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_RMDIR=y
+CONFIG_CMD_CP=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
+
+#
+# console                       
+#
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
+
+#
+# memory                        
+#
+# CONFIG_CMD_LOADB is not set
+# CONFIG_CMD_LOADS is not set
+# CONFIG_CMD_MEMINFO is not set
+# CONFIG_CMD_CRC is not set
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
+
+#
+# flash                         
+#
+# CONFIG_CMD_FLASH is not set
+# CONFIG_CMD_UBI is not set
+
+#
+# booting                       
+#
+CONFIG_CMD_BOOTM=y
+# CONFIG_CMD_BOOTM_ZLIB is not set
+# CONFIG_CMD_BOOTM_BZLIB is not set
+# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
+# CONFIG_CMD_GO is not set
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+# CONFIG_CMD_GPIO is not set
+# CONFIG_CMD_UNLZO is not set
+# CONFIG_NET is not set
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
+CONFIG_DRIVER_SERIAL_STM378X=y
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+
+#
+# SPI drivers                   
+#
 # CONFIG_SPI is not set
+# CONFIG_I2C is not set
+
+#
+# flash drivers                 
+#
+# CONFIG_DRIVER_CFI is not set
+# CONFIG_MTD is not set
+CONFIG_ATA=y
+
+#
+# drive types
+#
+CONFIG_ATA_DISK=y
+
+#
+# interface types
+#
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
+CONFIG_MCI=y
+
+#
+# --- Feature list ---
+#
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_INFO=y
+
+#
+# --- MCI host drivers ---
+#
+CONFIG_MCI_STM378X=y
+
+#
+# Filesystem support            
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_CRC32=y
+# CONFIG_DIGEST is not set
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
