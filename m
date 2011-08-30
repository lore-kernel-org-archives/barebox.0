Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QyHu0-0005ks-4m
	for barebox@lists.infradead.org; Tue, 30 Aug 2011 06:34:29 +0000
Received: by bke17 with SMTP id 17so5551226bke.36
	for <barebox@lists.infradead.org>; Mon, 29 Aug 2011 23:34:25 -0700 (PDT)
Message-Id: <6a487d727c7d0e29b35276f5780fd91e116f79d8.1314685868.git.fercerpav@gmail.com>
In-Reply-To: <3c14dbb81191e6dcf1ecc7ef799834f52ad5f10a.1314685868.git.fercerpav@gmail.com>
References: <3c14dbb81191e6dcf1ecc7ef799834f52ad5f10a.1314685868.git.fercerpav@gmail.com>
From: Paul Fertser <fercerpav@gmail.com>
Date: Tue, 30 Aug 2011 10:30:51 +0400
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
Subject: [PATCH 2/2] imx25: imx_spi: support CSPI v0.7 as found on i.MX25
To: barebox@lists.infradead.org

Based on the Linux driver. Barely tested with m25p80 with CS in GPIO mode.
Currently always using the slowest speed.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 arch/arm/mach-imx/include/mach/devices-imx25.h |    5 +
 arch/arm/mach-imx/include/mach/imx25-regs.h    |    1 +
 drivers/spi/Kconfig                            |    5 +
 drivers/spi/imx_spi.c                          |  115 ++++++++++++++++++++++++
 4 files changed, 126 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index 87f5ba0..eff5977 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -6,6 +6,11 @@ static inline struct device_d *imx25_add_i2c0(struct i2c_platform_data *pdata)
 	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
 }
 
+static inline struct device_d *imx25_add_spi0(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)IMX_CSPI1_BASE, 0, pdata);
+}
+
 static inline struct device_d *imx25_add_uart0(void)
 {
 	return imx_add_uart((void *)IMX_UART1_BASE, 0);
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 78ec0cd..73307c4 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -47,6 +47,7 @@
 #define IMX_NFC_BASE		0xBB000000
 #define IMX_FEC_BASE		0x50038000
 #define IMX_I2C1_BASE		0x43F80000
+#define IMX_CSPI1_BASE		0x43FA4000
 
 /*
  * Clock Controller Module (CCM)
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index c72493c..94470fe 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -14,6 +14,11 @@ config DRIVER_SPI_IMX_0_0
 	depends on ARCH_IMX27
 	default y
 
+config DRIVER_SPI_IMX_0_7
+	bool
+	depends on ARCH_IMX25
+	default y
+
 config DRIVER_SPI_IMX_2_3
 	bool
 	depends on ARCH_IMX51 || ARCH_IMX53
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 0d21fb3..3050efc 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -65,6 +65,22 @@
 
 #define CSPI_0_0_TEST_LBC		(1 << 14)
 
+#define CSPI_0_7_RXDATA			0x00
+#define CSPI_0_7_TXDATA			0x04
+#define CSPI_0_7_CTRL			0x08
+#define CSPI_0_7_CTRL_ENABLE		(1 << 0)
+#define CSPI_0_7_CTRL_MASTER		(1 << 1)
+#define CSPI_0_7_CTRL_XCH		(1 << 2)
+#define CSPI_0_7_CTRL_POL		(1 << 4)
+#define CSPI_0_7_CTRL_PHA		(1 << 5)
+#define CSPI_0_7_CTRL_SSCTL		(1 << 6)
+#define CSPI_0_7_CTRL_SSPOL		(1 << 7)
+#define CSPI_0_7_CTRL_CS_SHIFT		12
+#define CSPI_0_7_CTRL_DR_SHIFT		16
+#define CSPI_0_7_CTRL_BL_SHIFT		20
+#define CSPI_0_7_STAT			0x14
+#define CSPI_0_7_STAT_RR		(1 << 3)
+
 #define CSPI_2_3_RXDATA		0x00
 #define CSPI_2_3_TXDATA		0x04
 #define CSPI_2_3_CTRL		0x08
@@ -206,6 +222,94 @@ static void cspi_0_0_init(struct imx_spi *imx)
 }
 #endif
 
+#ifdef CONFIG_DRIVER_SPI_IMX_0_7
+static unsigned int cspi_0_7_xchg_single(struct imx_spi *imx, unsigned int data)
+{
+	void __iomem *base = imx->regs;
+
+	unsigned int cfg_reg = readl(base + CSPI_0_7_CTRL);
+
+	writel(data, base + CSPI_0_7_TXDATA);
+
+	cfg_reg |= CSPI_0_7_CTRL_XCH;
+
+	writel(cfg_reg, base + CSPI_0_7_CTRL);
+
+	while (!(readl(base + CSPI_0_7_STAT) & CSPI_0_7_STAT_RR))
+		;
+
+	return readl(base + CSPI_0_7_RXDATA);
+}
+
+#if 0
+/* MX1, MX31, MX35, MX51 CSPI */
+static unsigned int spi_imx_clkdiv_2(unsigned int fin,
+		unsigned int fspi)
+{
+	int i, div = 4;
+
+	for (i = 0; i < 7; i++) {
+		if (fspi * div >= fin)
+			return i;
+		div <<= 1;
+	}
+
+	return 7;
+}
+#endif
+
+static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
+{
+	struct spi_master *master = spi->master;
+	struct imx_spi *imx = container_of(master, struct imx_spi, master);
+	void __iomem *base = imx->regs;
+	unsigned int cs = 0;
+	int gpio = imx->cs_array[spi->chip_select];
+	unsigned int reg = CSPI_0_7_CTRL_ENABLE | CSPI_0_7_CTRL_MASTER;
+
+	if (spi->mode & SPI_CS_HIGH)
+		cs = 1;
+
+	if (!is_active) {
+		if (gpio >= 0)
+			gpio_set_value(gpio, !cs);
+		return;
+	}
+
+#if 0
+	reg |= spi_imx_clkdiv_2(166000000, spi->max_speed_hz) <<
+	  CSPI_0_7_CTRL_DR_SHIFT;
+#endif
+	reg |= 7 << CSPI_0_7_CTRL_DR_SHIFT; /* slowest speed */
+
+	reg |= (spi->bits_per_word - 1) << CSPI_0_7_CTRL_BL_SHIFT;
+	reg |= CSPI_0_7_CTRL_SSCTL;
+
+	if (spi->mode & SPI_CPHA)
+		reg |= CSPI_0_7_CTRL_PHA;
+	if (spi->mode & SPI_CPOL)
+		reg |= CSPI_0_7_CTRL_POL;
+	if (spi->mode & SPI_CS_HIGH)
+		reg |= CSPI_0_7_CTRL_SSPOL;
+	if (gpio < 0)
+		reg |= (gpio + 32) << CSPI_0_7_CTRL_CS_SHIFT;
+
+	writel(reg, base + CSPI_0_7_CTRL);
+
+	if (gpio >= 0)
+		gpio_set_value(gpio, cs);
+}
+
+static void cspi_0_7_init(struct imx_spi *imx)
+{
+	void __iomem *base = imx->regs;
+
+	/* drain receive buffer */
+	while (readl(base + CSPI_0_7_STAT) & CSPI_0_7_STAT_RR)
+		readl(base + CSPI_0_7_RXDATA);
+}
+#endif
+
 #ifdef CONFIG_DRIVER_SPI_IMX_2_3
 static unsigned int cspi_2_3_xchg_single(struct imx_spi *imx, unsigned int data)
 {
@@ -375,6 +479,13 @@ static struct spi_imx_devtype_data spi_imx_devtype_data[] = {
 		.init = cspi_0_0_init,
 	},
 #endif
+#ifdef CONFIG_DRIVER_SPI_IMX_0_7
+	[SPI_IMX_VER_0_7] = {
+		.chipselect = cspi_0_7_chipselect,
+		.xchg_single = cspi_0_7_xchg_single,
+		.init = cspi_0_7_init,
+	},
+#endif
 #ifdef CONFIG_DRIVER_SPI_IMX_2_3
 	[SPI_IMX_VER_2_3] = {
 		.chipselect = cspi_2_3_chipselect,
@@ -405,6 +516,10 @@ static int imx_spi_probe(struct device_d *dev)
 	if (cpu_is_mx27())
 		version = SPI_IMX_VER_0_0;
 #endif
+#ifdef CONFIG_DRIVER_SPI_IMX_0_7
+	if (cpu_is_mx25())
+		version = SPI_IMX_VER_0_7;
+#endif
 #ifdef CONFIG_DRIVER_SPI_IMX_2_3
 	if (cpu_is_mx51() || cpu_is_mx53())
 		version = SPI_IMX_VER_2_3;
-- 
1.5.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
