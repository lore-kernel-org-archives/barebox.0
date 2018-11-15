Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNDat-00055Z-69
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 09:05:48 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gNDaf-0005pV-O1
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 10:05:33 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gNDaf-0002dN-7g
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 10:05:33 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 15 Nov 2018 10:05:29 +0100
Message-Id: <20181115090530.10081-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: socfpga: update defconfig
To: Barebox List <barebox@lists.infradead.org>

Select some more common drivers in the defconfig.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/socfpga_defconfig | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 3a50bae8f2dc..d9688ca29ce3 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -59,6 +59,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_FIRMWARELOAD=y
 CONFIG_CMD_OF_NODE=y
@@ -73,15 +74,22 @@ CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_DESIGNWARE=y
 CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_MTD_NAND_DENALI=y
+CONFIG_MTD_NAND_DENALI_DT=y
+CONFIG_MTD_SPI_NOR=y
+CONFIG_SPI_CADENCE_QUADSPI=y
 CONFIG_MCI=y
 CONFIG_MCI_DW=y
-CONFIG_MFD_MC13XXX=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT25=y
 CONFIG_KEYBOARD_GPIO=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_DW=y
 CONFIG_GPIO_DESIGNWARE=y
 CONFIG_FIRMWARE_ALTERA_SOCFPGA=y
 CONFIG_FS_EXT4=y
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
