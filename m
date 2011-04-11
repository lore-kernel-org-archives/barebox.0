Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QO-K1
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:39:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:50 +0200
Message-Id: <1302532791-20664-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] ARM omap beagle: update defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/omap3530_beagle_defconfig |   15 +++++++++++++--
 1 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index d4b8737..8a12154 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -2,16 +2,19 @@ CONFIG_ARCH_OMAP=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
 CONFIG_MACH_BEAGLE=y
 CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
 CONFIG_TEXT_BASE=0x81000000
 CONFIG_PROMPT="barebox> "
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_PARTITION=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -27,6 +30,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNLZO=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
@@ -34,14 +38,15 @@ CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
+CONFIG_NET_USB_SMSC95XX=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
-CONFIG_I2C_TWL4030=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
@@ -49,3 +54,9 @@ CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_OMAP=y
 CONFIG_USB_TWL4030=y
+CONFIG_MCI=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_I2C_TWL4030=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
