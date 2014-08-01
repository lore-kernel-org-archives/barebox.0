Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDCu9-0007Zc-1t
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:29:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 15:29:15 +0200
Message-Id: <1406899755-8288-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
References: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: AM3355x: Update defconfig
To: barebox@lists.infradead.org

Most diffstat comes from refreshing the config. The only real change
is that the NAND xload update handler is enabled now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_defconfig | 83 ++++++++++++++++++++-------------------
 1 file changed, 42 insertions(+), 41 deletions(-)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 0c92c96..d3feb10 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -1,11 +1,11 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
+CONFIG_BAREBOX_UPDATE_AM33XX_NAND_XLOADSLOTS=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_PCM051=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
@@ -15,7 +15,6 @@ CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="barebox> "
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -25,61 +24,63 @@ CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENUTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_BOOTZ=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
+CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
-CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_DETECT=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
