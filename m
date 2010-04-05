Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NyiHO-0002UE-9w
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 09:07:35 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id o3597TC9027154
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 5 Apr 2010 04:07:31 -0500
From: Anand Gadiyar <gadiyar@ti.com>
Date: Mon,  5 Apr 2010 14:37:26 +0530
Message-Id: <1270458446-25073-3-git-send-email-gadiyar@ti.com>
In-Reply-To: <1270458446-25073-2-git-send-email-gadiyar@ti.com>
References: <1270458446-25073-1-git-send-email-gadiyar@ti.com>
	<1270458446-25073-2-git-send-email-gadiyar@ti.com>
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
Subject: [PATCH 3/3] omap3: 3430sdp: Update defconfig
To: barebox@lists.infradead.org
Cc: Anand Gadiyar <gadiyar@ti.com>

Update the defconfig to enable some useful options
- Use UART1 by default
- Change the prompt to barebox:
- Enable help
- Enable some useful commands (not all, as they are not yet tested)

Signed-off-by: Anand Gadiyar <gadiyar@ti.com>
---
This is a safe config, tested and working on the SDP.
Need to play some more before enabling other options.
So we'll do that later.

 arch/arm/configs/omap_3430sdp_defconfig |   82 +++++++++++++++++---------------
 1 files changed, 44 insertions(+), 38 deletions(-)

Index: barebox/arch/arm/configs/omap_3430sdp_defconfig
===================================================================
--- barebox.orig/arch/arm/configs/omap_3430sdp_defconfig
+++ barebox/arch/arm/configs/omap_3430sdp_defconfig
@@ -1,7 +1,7 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:48:53 2009
+# barebox version: 2010.03.0
+# Mon Apr  5 14:21:20 2010
 #
 # CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
@@ -12,6 +12,7 @@ CONFIG_ARM=y
 #
 # CONFIG_ARCH_AT91 is not set
 # CONFIG_ARCH_AT91RM9200 is not set
+# CONFIG_ARCH_EP93XX is not set
 # CONFIG_ARCH_IMX is not set
 # CONFIG_ARCH_NETX is not set
 CONFIG_ARCH_OMAP=y
@@ -48,18 +49,17 @@ CONFIG_GPMC=y
 CONFIG_MACH_OMAP343xSDP=y
 # CONFIG_MACH_BEAGLE is not set
 # CONFIG_MACH_OMAP3EVM is not set
+CONFIG_OMAP343xSDP_UART1=y
+# CONFIG_OMAP343xSDP_UART3 is not set
 # CONFIG_MACH_OMAP_ADVANCED_MUX is not set
 CONFIG_HAS_OMAP_NAND=y
 # CONFIG_MACH_OMAP_GPMC_NAND is not set
 # CONFIG_AEABI is not set
 
 #
-# Arm specific settings
+# Arm specific settings         
 #
 CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 # CONFIG_CPU_V7_DCACHE_SKIP is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_HAS_KALLSYMS=y
@@ -67,12 +67,12 @@ CONFIG_HAS_MODULES=y
 # CONFIG_CMD_MEMORY is not set
 
 #
-# General Settings
+# General Settings              
 #
 CONFIG_LOCALVERSION_AUTO=y
 
 #
-# memory layout
+# memory layout                 
 #
 CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x40200000
@@ -88,15 +88,16 @@ CONFIG_MALLOC_SIZE=0x400000
 CONFIG_MACH_HAS_LOWLEVEL_INIT=y
 CONFIG_MACH_DO_LOWLEVEL_INIT=y
 CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
-CONFIG_PROMPT="X-load 343x> "
+CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=115200
-CONFIG_SIMPLE_READLINE=y
 CONFIG_LONGHELP=y
 CONFIG_CBSIZE=1024
 CONFIG_MAXARGS=16
 # CONFIG_SHELL_HUSH is not set
 CONFIG_SHELL_SIMPLE=y
-# CONFIG_CMDLINE_EDITING is not set
+CONFIG_CMDLINE_EDITING=y
+# CONFIG_AUTO_COMPLETE is not set
+CONFIG_DYNAMIC_CRC_TABLE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_FULL=y
@@ -106,7 +107,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 
 #
-# Debugging
+# Debugging                     
 #
 CONFIG_DEBUG_INFO=y
 # CONFIG_ENABLE_FLASH_NOISE is not set
@@ -114,11 +115,11 @@ CONFIG_DEBUG_INFO=y
 # CONFIG_ENABLE_DEVICE_NOISE is not set
 
 #
-# Commands
+# Commands                      
 #
 
 #
-# scripting
+# scripting                     
 #
 # CONFIG_CMD_EDIT is not set
 # CONFIG_CMD_EXEC is not set
@@ -126,91 +127,96 @@ CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_SAVEENV is not set
 # CONFIG_CMD_LOADENV is not set
 # CONFIG_CMD_EXPORT is not set
-# CONFIG_CMD_PRINTENV is not set
+CONFIG_CMD_PRINTENV=y
 # CONFIG_CMD_READLINE is not set
 CONFIG_CMD_TRUE=y
 CONFIG_CMD_FALSE=y
 
 #
-# file commands
+# file commands                 
 #
-# CONFIG_CMD_LS is not set
+CONFIG_CMD_LS=y
 # CONFIG_CMD_RM is not set
-# CONFIG_CMD_CAT is not set
+CONFIG_CMD_CAT=y
 # CONFIG_CMD_MKDIR is not set
 # CONFIG_CMD_RMDIR is not set
-# CONFIG_CMD_CP is not set
-# CONFIG_CMD_PWD is not set
-# CONFIG_CMD_CD is not set
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
+CONFIG_CMD_CP=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
 
 #
-# console
+# console                       
 #
-# CONFIG_CMD_CLEAR is not set
-# CONFIG_CMD_ECHO is not set
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
 
 #
-# memory
+# memory                        
 #
 CONFIG_CMD_LOADB=y
-# CONFIG_CMD_MEMINFO is not set
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_CRC is not set
 # CONFIG_CMD_MTEST is not set
 
 #
-# flash
+# flash                         
 #
 # CONFIG_CMD_FLASH is not set
 
 #
-# booting
+# booting                       
 #
-# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_BOOTM=y
+# CONFIG_CMD_BOOTM_ZLIB is not set
+# CONFIG_CMD_BOOTM_BZLIB is not set
+# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_BOOTU=y
+# CONFIG_CMD_LINUX16 is not set
 # CONFIG_CMD_RESET is not set
 CONFIG_CMD_GO=y
 # CONFIG_CMD_TIMEOUT is not set
 # CONFIG_CMD_PARTITION is not set
 CONFIG_CMD_VERSION=y
-# CONFIG_CMD_HELP is not set
+CONFIG_CMD_HELP=y
 CONFIG_CMD_DEVINFO=y
 # CONFIG_NET is not set
 
 #
-# Drivers
+# Drivers                       
 #
 
 #
-# serial drivers
+# serial drivers                
 #
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 
 #
-# SPI drivers
+# SPI drivers                   
 #
 # CONFIG_SPI is not set
 # CONFIG_I2C is not set
 
 #
-# flash drivers
+# flash drivers                 
 #
 # CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
 # CONFIG_NAND is not set
+# CONFIG_ATA is not set
 # CONFIG_USB is not set
 # CONFIG_USB_GADGET is not set
 # CONFIG_VIDEO is not set
 
 #
-# Filesystem support
+# Filesystem support            
 #
 # CONFIG_FS_CRAMFS is not set
 CONFIG_FS_RAMFS=y
 CONFIG_FS_DEVFS=y
+CONFIG_CRC32=y
 CONFIG_CRC16=y
 # CONFIG_GENERIC_FIND_NEXT_BIT is not set

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
