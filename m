Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtfTx-0002cz-Vq
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 16:30:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Nov 2014 17:29:54 +0100
Message-Id: <1417019394-23683-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] ARM: i.MX: update imx_v7_defconfig
To: barebox@lists.infradead.org

Enable support for the i.MX6sx sabresdb and the KaRo Tx6x.
The sabresdb needs regulator support, so enable this aswell.
Also enable usbserial support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 7076ecd..a921c90 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -13,8 +13,10 @@ CONFIG_MACH_GUF_SANTARO=y
 CONFIG_MACH_REALQ7=y
 CONFIG_MACH_GK802=y
 CONFIG_MACH_TQMA6X=y
+CONFIG_MACH_TX6X=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
+CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
 CONFIG_MACH_NITROGEN6X=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
@@ -46,6 +48,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
@@ -94,6 +97,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
@@ -103,7 +107,6 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
-CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_AT803X_PHY=y
@@ -111,9 +114,6 @@ CONFIG_MICREL_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
 CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_DATAFLASH=y
@@ -137,6 +137,7 @@ CONFIG_USB_ULPI=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
 CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
@@ -146,7 +147,6 @@ CONFIG_DRIVER_VIDEO_EDID=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC13XXX=y
 CONFIG_MFD_MC34704=y
 CONFIG_MFD_MC9SDZ60=y
 CONFIG_MFD_STMPE=y
@@ -162,6 +162,8 @@ CONFIG_PWM=y
 CONFIG_PWM_IMX=y
 CONFIG_MXS_APBH_DMA=y
 CONFIG_GPIO_STMPE=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
