Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUwBX-00080l-FN
 for barebox@lists.infradead.org; Thu, 17 May 2012 08:35:49 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 17 May 2012 12:35:38 +0400
Message-Id: <1337243739-15980-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] i.MX51: Changed naming registers and procedures for SPI
To: barebox@lists.infradead.org

This patch reflects real naming of SPI by Freescale.
We have two ECSPI channels and one CSPI.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/devices-imx51.h |    8 ++++----
 arch/arm/mach-imx/include/mach/imx51-regs.h    |    6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 9ad6476..7ba49a4 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -4,17 +4,17 @@
 
 static inline struct device_d *imx51_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX51_CSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi((void *)MX51_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx51_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX51_CSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi((void *)MX51_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx51_add_spi2(struct spi_imx_master *pdata)
+static inline struct device_d *imx51_add_cspi(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX51_CSPI3_BASE_ADDR, 2, pdata);
+	return imx_add_spi((void *)MX51_CSPI_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx51_add_i2c0(struct i2c_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index 3eb0a1f..b51aa67 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -76,12 +76,12 @@
 #define MX51_ARM_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000A0000)
 #define MX51_OWIRE_BASE_ADDR (MX51_AIPS2_BASE_ADDR + 0x000A4000)
 #define MX51_FIRI_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000A8000)
-#define MX51_CSPI2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000AC000)
+#define MX51_ECSPI2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000AC000)
 #define MX51_SDMA_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B0000)
 #define MX51_SCC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B4000)
 #define MX51_ROMCP_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B8000)
 #define MX51_RTIC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000BC000)
-#define MX51_CSPI3_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C0000)
+#define MX51_CSPI_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C0000)
 #define MX51_I2C2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C4000)
 #define MX51_I2C1_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C8000)
 #define MX51_SSI1_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000CC000)
@@ -104,7 +104,7 @@
 #define MX51_MMC_SDHC1_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00004000)
 #define MX51_MMC_SDHC2_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00008000)
 #define MX51_UART3_BASE_ADDR 		(MX51_SPBA0_BASE_ADDR + 0x0000C000)
-#define MX51_CSPI1_BASE_ADDR 		(MX51_SPBA0_BASE_ADDR + 0x00010000)
+#define MX51_ECSPI1_BASE_ADDR 		(MX51_SPBA0_BASE_ADDR + 0x00010000)
 #define MX51_SSI2_BASE_ADDR		(MX51_SPBA0_BASE_ADDR + 0x00014000)
 #define MX51_MMC_SDHC3_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00020000)
 #define MX51_MMC_SDHC4_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00024000)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
