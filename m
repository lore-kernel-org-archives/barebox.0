Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITm-0005k0-M5
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:03:07 +0200
Message-Id: <20190508090307.17729-11-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: Layerscape: defconfig: Enable more features
To: Barebox List <barebox@lists.infradead.org>

The TQMLS1046a has an i2c mux and a i2c gpio expander. Add support for
it and also disable early debugging as these are for a single board
only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/layerscape_defconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index dadbcc214c..b81f375415 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -22,7 +22,6 @@ CONFIG_PBL_CONSOLE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_LL=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -85,8 +84,13 @@ CONFIG_DRIVER_NET_FSL_FMAN=y
 CONFIG_DP83867_PHY=y
 CONFIG_REALTEK_PHY=y
 CONFIG_NET_DSA_MV88E6XXX=y
+CONFIG_DRIVER_SPI_FSL_QUADSPI=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
+CONFIG_I2C_MUX=y
+CONFIG_I2C_MUX_PCA954x=y
+CONFIG_MTD=y
+CONFIG_MTD_M25P80=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
@@ -94,10 +98,12 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_LED_PCA955X=y
 CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
+CONFIG_GPIO_PCA953X=y
 CONFIG_NVMEM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
