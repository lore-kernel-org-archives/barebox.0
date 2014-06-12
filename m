Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WuybE-0005CE-R8
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:35:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:34:33 +0200
Message-Id: <1402554874-14055-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402554874-14055-1-git-send-email-s.hauer@pengutronix.de>
References: <1402554874-14055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX51 babbage: Drop board defconfig
To: barebox@lists.infradead.org

imx_v7_defconfig covers the babbage board, no need for a board defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-babbage/board.c     |  2 +
 .../boards/freescale-mx51-babbage/env/config-board |  7 --
 arch/arm/configs/freescale-mx51-babbage_defconfig  | 81 ----------------------
 3 files changed, 2 insertions(+), 88 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx51-babbage/env/config-board
 delete mode 100644 arch/arm/configs/freescale-mx51-babbage_defconfig

diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index 0c72c74..001873b 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -157,6 +157,8 @@ static int imx51_babbage_init(void)
 	if (!of_machine_is_compatible("fsl,imx51-babbage"))
 		return 0;
 
+	barebox_set_hostname("babbage");
+
 	mc13xxx_register_init_callback(babbage_power_init);
 
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
diff --git a/arch/arm/boards/freescale-mx51-babbage/env/config-board b/arch/arm/boards/freescale-mx51-babbage/env/config-board
deleted file mode 100644
index cfc483e..0000000
--- a/arch/arm/boards/freescale-mx51-babbage/env/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=babbage
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/configs/freescale-mx51-babbage_defconfig b/arch/arm/configs/freescale-mx51-babbage_defconfig
deleted file mode 100644
index 708b564..0000000
--- a/arch/arm/configs/freescale-mx51-babbage_defconfig
+++ /dev/null
@@ -1,81 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_MACH_FREESCALE_MX51_PDK=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx51-babbage/env/"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_CLK=y
-CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_NET_RESOLV=y
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_MTD=y
-CONFIG_MTD_DATAFLASH=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC13XXX=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
