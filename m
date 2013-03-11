Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEy1Q-0005jH-G9
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 08:23:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 09:23:49 +0100
Message-Id: <1362990229-1425-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362990229-1425-1-git-send-email-s.hauer@pengutronix.de>
References: <1362990229-1425-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] Add DMO RealQ7 defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/dmo-realq7_defconfig | 91 +++++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 arch/arm/configs/dmo-realq7_defconfig

diff --git a/arch/arm/configs/dmo-realq7_defconfig b/arch/arm/configs/dmo-realq7_defconfig
new file mode 100644
index 0000000..d063e97
--- /dev/null
+++ b/arch/arm/configs/dmo-realq7_defconfig
@@ -0,0 +1,91 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX6=y
+CONFIG_MACH_REALQ7=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x8fc00000
+CONFIG_MALLOC_SIZE=0x40000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/dmo-mx6-realq7/env"
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_WD=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
+CONFIG_MTD_M25P80=y
+CONFIG_DISK_AHCI=y
+CONFIG_DISK_AHCI_IMX=y
+CONFIG_MCI=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_MFD_STMPE=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_GPIO_STMPE=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
