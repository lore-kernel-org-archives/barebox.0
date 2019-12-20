Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKY-0003jl-Lq
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:32 +0100
Message-Id: <20191220143232.28354-11-s.hauer@pengutronix.de>
In-Reply-To: <20191220143232.28354-1-s.hauer@pengutronix.de>
References: <20191220143232.28354-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: rpi_defconfig: Enable networking support
To: Barebox List <barebox@lists.infradead.org>

Now that we have USB support for the Raspberry Pi enable USB and USB
network support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rpi_defconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 0ae0c42b12..9603a0fa30 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -22,9 +22,12 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
@@ -43,6 +46,9 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LET=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_LOGIN=y
@@ -62,8 +68,13 @@ CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC2_HOST=y
 CONFIG_MCI=y
 CONFIG_MCI_BCM283X=y
 CONFIG_MCI_BCM283X_SDHOST=y
@@ -75,6 +86,8 @@ CONFIG_WATCHDOG_BCM2835=y
 CONFIG_PINCTRL_BCM283X=y
 CONFIG_REGULATOR=y
 CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
