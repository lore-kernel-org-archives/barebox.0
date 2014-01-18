Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4UOP-0003RM-RB
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 11:48:51 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 18 Jan 2014 12:48:07 +0100
Message-Id: <1390045689-23127-4-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
References: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: mioa701 defconfig update
To: barebox@lists.infradead.org

Update mioa701 board for new setup :
 - double the barebox size to 524288 bytes
 - add new commands
 - add device tree support, for future PXA port to devicetree
 - add reset source

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/configs/mioa701_defconfig |   49 +++++++++++++++++++++++++++++++++---
 1 file changed, 46 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index 5f06b3c..841b9be 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -1,27 +1,46 @@
 CONFIG_ARCH_PXA=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_AEABI=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
-CONFIG_TEXT_BASE=0xa3f00000
-CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x262144
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0xa3d00000
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MODULES=y
+CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mioa701/env"
+CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_BASENAME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
@@ -29,24 +48,40 @@ CONFIG_CMD_LOADS=y
 CONFIG_CMD_SAVES=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_FLEXIBLE_BOOTARGS=y
+CONFIG_CMD_BOOT=y
 CONFIG_CMD_RESET=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_SPLASH=y
+CONFIG_CMD_LSMOD=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_DETECT=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_PXA=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_DOCG3=y
+CONFIG_MTD_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_VIDEO=y
@@ -55,8 +90,16 @@ CONFIG_MCI=y
 CONFIG_MCI_PXA=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
+CONFIG_KEYBOARD_GPIO=y
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
 CONFIG_BZLIB=y
+CONFIG_BMP=y
+CONFIG_PNG=y
+CONFIG_SHA256=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
