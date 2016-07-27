Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bSQ4W-0002dV-0T
 for barebox@lists.infradead.org; Wed, 27 Jul 2016 14:44:36 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Wed, 27 Jul 2016 16:42:04 +0200
Message-Id: <1469630524-27224-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM i.MX31: add SPI support
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The i.MX31 SPI interface was refered by freescale as spi_ver_0_4 in one
of their older vendor extended linux releases. spi_ver_0_4 differs only
in minor aspects to spi_ver_0_7 (i.MX35) which is already supported by
barebox.
Regarding barebox, the differences boil down to the location and length
of the CHIP SELECT and BIT COUNT/BURST LENGTH elements of CONREG. The
spi_ver_0_4 variant is limited to single word bursts with a maximum of
32 bits_per_word.

Add support for the i.MX31 SPI interface to the barebox spi_ver_0_7
implementation.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/include/mach/devices-imx31.h |  6 +++---
 drivers/spi/Kconfig                            |  2 +-
 drivers/spi/imx_spi.c                          | 15 ++++++++++++---
 include/spi/imx-spi.h                          |  7 +++++++
 4 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 63319fe..7c70e40 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -4,17 +4,17 @@
 
 static inline struct device_d *imx31_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi_imx27((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx35((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx31_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi_imx27((void *)MX31_CSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx35((void *)MX31_CSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx31_add_spi2(struct spi_imx_master *pdata)
 {
-	return imx_add_spi_imx27((void *)MX31_CSPI3_BASE_ADDR, 2, pdata);
+	return imx_add_spi_imx35((void *)MX31_CSPI3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx31_add_uart0(void)
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 738b88e..9a71b3b 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -33,7 +33,7 @@ config DRIVER_SPI_IMX_0_0
 
 config DRIVER_SPI_IMX_0_7
 	bool
-	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53
+	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX53
 	default y
 
 config DRIVER_SPI_IMX_2_3
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 99ec228..67968e0 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -206,7 +206,12 @@ static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
 	reg |= spi_imx_clkdiv_2(clk_get_rate(imx->clk), spi->max_speed_hz) <<
 		CSPI_0_7_CTRL_DR_SHIFT;
 
-	reg |= (spi->bits_per_word - 1) << CSPI_0_7_CTRL_BL_SHIFT;
+	if (cpu_is_mx31())
+		reg |= ((spi->bits_per_word - 1) & CSPI_0_4_CTRL_BL_MASK)
+			<< CSPI_0_4_CTRL_BL_SHIFT;
+	else
+		reg |= (spi->bits_per_word - 1) << CSPI_0_7_CTRL_BL_SHIFT;
+
 	reg |= CSPI_0_7_CTRL_SSCTL;
 
 	if (spi->mode & SPI_CPHA)
@@ -215,8 +220,12 @@ static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
 		reg |= CSPI_0_7_CTRL_POL;
 	if (spi->mode & SPI_CS_HIGH)
 		reg |= CSPI_0_7_CTRL_SSPOL;
-	if (gpio < 0)
-		reg |= (gpio + 32) << CSPI_0_7_CTRL_CS_SHIFT;
+	if (gpio < 0) {
+		if (cpu_is_mx31())
+			reg |= (gpio + 32) << CSPI_0_4_CTRL_CS_SHIFT;
+		else
+			reg |= (gpio + 32) << CSPI_0_7_CTRL_CS_SHIFT;
+	}
 
 	writel(reg, base + CSPI_0_7_CTRL);
 
diff --git a/include/spi/imx-spi.h b/include/spi/imx-spi.h
index 221c665..a592573 100644
--- a/include/spi/imx-spi.h
+++ b/include/spi/imx-spi.h
@@ -40,6 +40,12 @@
 
 #define CSPI_0_0_RESET_START		(1 << 0)
 
+#define CSPI_0_4_CTRL			0x08
+#define CSPI_0_4_CTRL_BL_SHIFT		8
+#define CSPI_0_4_CTRL_BL_MASK		0x1f
+#define CSPI_0_4_CTRL_DRCTL_SHIFT	20
+#define CSPI_0_4_CTRL_CS_SHIFT		24
+
 #define CSPI_0_7_RXDATA			0x00
 #define CSPI_0_7_TXDATA			0x04
 #define CSPI_0_7_CTRL			0x08
@@ -50,6 +56,7 @@
 #define CSPI_0_7_CTRL_PHA		(1 << 5)
 #define CSPI_0_7_CTRL_SSCTL		(1 << 6)
 #define CSPI_0_7_CTRL_SSPOL		(1 << 7)
+#define CSPI_0_7_CTRL_DRCTL_SHIFT	8
 #define CSPI_0_7_CTRL_CS_SHIFT		12
 #define CSPI_0_7_CTRL_DR_SHIFT		16
 #define CSPI_0_7_CTRL_BL_SHIFT		20
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
