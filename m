Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055g-UI
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:49 +0100
Message-Id: <1394807569-23620-30-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/29] ARM: update imx_v7_defconfig
To: barebox@lists.infradead.org

- Enable loadenv command
- Enable mtd/NAND/UBI/UBIFS support
- Enable IPUv3 support
- Enable splash support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index e821061..f29c968 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -12,9 +12,11 @@ CONFIG_MACH_REALQ7=y
 CONFIG_MACH_GK802=y
 CONFIG_MACH_TQMA6X=y
 CONFIG_MACH_SABRELITE=y
+CONFIG_MACH_SABRESD=y
 CONFIG_MACH_NITROGEN6X=y
 CONFIG_MACH_SOLIDRUN_HUMMINGBOARD=y
 CONFIG_MACH_UDOO=y
+CONFIG_MACH_VARISCITE_MX6=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_IMX_OCOTP=y
@@ -41,9 +43,11 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_READF=y
 CONFIG_CMD_LET=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
@@ -72,6 +76,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
@@ -94,8 +99,8 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_AT803X_PHY=y
 CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_AT803X_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
@@ -107,6 +112,13 @@ CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_DATAFLASH=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_SST25L=y
+CONFIG_NAND=y
+CONFIG_NAND_ALLOW_ERASE_BAD=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+CONFIG_NAND_MXS=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_FASTMAP=y
 CONFIG_DISK_AHCI=y
 CONFIG_DISK_AHCI_IMX=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
@@ -118,6 +130,12 @@ CONFIG_USB_ULPI=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB=y
+CONFIG_DRIVER_VIDEO_EDID=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
@@ -133,6 +151,9 @@ CONFIG_EEPROM_AT24=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
+CONFIG_PWM=y
+CONFIG_PWM_IMX=y
+CONFIG_MXS_APBH_DMA=y
 CONFIG_GPIO_STMPE=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
@@ -140,4 +161,5 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_LZO_DECOMPRESS=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
