Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xf8-0007F0-2y
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 08:07:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Sep 2019 10:07:24 +0200
Message-Id: <20190911080731.23102-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/8] ARM: Remove vincell_defconfig
To: Barebox List <barebox@lists.infradead.org>

The vincell Board is covered by the imx_v7_defconfig. Remove the board
specific config.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/vincell_defconfig | 110 -----------------------------
 1 file changed, 110 deletions(-)
 delete mode 100644 arch/arm/configs/vincell_defconfig

diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
deleted file mode 100644
index a09161df44..0000000000
--- a/arch/arm/configs/vincell_defconfig
+++ /dev/null
@@ -1,110 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_MACH_GUF_VINCELL=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_POLLER=y
-CONFIG_STATE=y
-CONFIG_RESET_SOURCE=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_ARM_MMUINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_WD=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_STATE=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_AT803X_PHY=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_MTD=y
-CONFIG_MTD_RAW_DEVICE=y
-CONFIG_MTD_DATAFLASH=y
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_SST25L=y
-CONFIG_NAND=y
-CONFIG_NAND_ALLOW_ERASE_BAD=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BBM=y
-CONFIG_MTD_UBI=y
-CONFIG_MTD_UBI_FASTMAP=y
-CONFIG_USB_HOST=y
-CONFIG_USB_IMX_CHIPIDEA=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
-CONFIG_USB_STORAGE=y
-CONFIG_MCI=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_STATE_DRV=y
-CONFIG_EEPROM_AT25=y
-CONFIG_EEPROM_AT24=y
-CONFIG_WATCHDOG=y
-CONFIG_WATCHDOG_IMX=y
-CONFIG_FS_TFTP=y
-CONFIG_LZO_DECOMPRESS=y
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
