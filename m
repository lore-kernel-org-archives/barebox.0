Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqEM-0006Pz-9y
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:18 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:31 +0100
Message-Id: <1263815791-10839-9-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-8-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-2-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-3-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-4-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-5-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-6-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-7-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-8-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 8/8] i.MX35 3stack: update of defconfig
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/configs/freescale_mx35_3stack_defconfig |   67 ++++++++++++----------
 1 files changed, 36 insertions(+), 31 deletions(-)

diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index 1319a69..17a2fdc 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -1,7 +1,7 @@
 #
 # Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:47:45 2009
+# barebox version: 2009.12.0-pre
+# Tue Dec 22 17:43:43 2009
 #
 # CONFIG_BOARD_LINKER_SCRIPT is not set
 CONFIG_GENERIC_LINKER_SCRIPT=y
@@ -43,17 +43,17 @@ CONFIG_MACH_FREESCALE_MX35_3STACK=y
 # CONFIG_MACH_PCM043 is not set
 
 #
-# Board specific settings
+# Board specific settings       
 #
 
 #
-# i.MX specific settings
+# i.MX specific settings        
 #
 # CONFIG_IMX_CLKO is not set
-# CONFIG_AEABI is not set
+CONFIG_AEABI=y
 
 #
-# Arm specific settings
+# Arm specific settings         
 #
 CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_CMDLINE_TAG=y
@@ -68,12 +68,12 @@ CONFIG_ENV_HANDLING=y
 CONFIG_GENERIC_GPIO=y
 
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
 CONFIG_TEXT_BASE=0x87F00000
@@ -81,7 +81,7 @@ CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
 CONFIG_MEMORY_LAYOUT_DEFAULT=y
 # CONFIG_MEMORY_LAYOUT_FIXED is not set
 CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_MALLOC_SIZE=0x1000000
 # CONFIG_BROKEN is not set
 # CONFIG_EXPERIMENTAL is not set
 CONFIG_MACH_HAS_LOWLEVEL_INIT=y
@@ -105,10 +105,10 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pcm043/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="board/freescale-mx35-3-stack/env/"
 
 #
-# Debugging
+# Debugging                     
 #
 # CONFIG_DEBUG_INFO is not set
 # CONFIG_ENABLE_FLASH_NOISE is not set
@@ -116,11 +116,11 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pcm043/env/"
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
@@ -133,7 +133,7 @@ CONFIG_CMD_TRUE=y
 CONFIG_CMD_FALSE=y
 
 #
-# file commands
+# file commands                 
 #
 CONFIG_CMD_LS=y
 CONFIG_CMD_RM=y
@@ -147,13 +147,13 @@ CONFIG_CMD_MOUNT=y
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
@@ -161,12 +161,12 @@ CONFIG_CMD_CRC=y
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
@@ -182,7 +182,8 @@ CONFIG_CMD_TEST=y
 CONFIG_CMD_VERSION=y
 CONFIG_CMD_HELP=y
 CONFIG_CMD_DEVINFO=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_BMP=y
+# CONFIG_CMD_GPIO is not set
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 # CONFIG_NET_RARP is not set
@@ -191,11 +192,11 @@ CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 
 #
-# Drivers
+# Drivers                       
 #
 
 #
-# serial drivers
+# serial drivers                
 #
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
@@ -203,39 +204,43 @@ CONFIG_DRIVER_SERIAL_IMX=y
 CONFIG_MIIPHY=y
 
 #
-# Network drivers
+# Network drivers               
 #
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
 # CONFIG_DRIVER_NET_SMC91111 is not set
-# CONFIG_DRIVER_NET_FEC_IMX is not set
+CONFIG_DRIVER_NET_FEC_IMX=y
 
 #
-# SPI drivers
+# SPI drivers                   
 #
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_IMX is not set
-# CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_DRIVER_I2C_IMX=y
 CONFIG_DRIVER_I2C_MC13892=y
 CONFIG_DRIVER_I2C_MC9SDZ60=y
 
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
 # CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_IMX_IPU=y
 
 #
-# Filesystem support
+# Filesystem support            
 #
 # CONFIG_FS_CRAMFS is not set
 CONFIG_FS_RAMFS=y
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
