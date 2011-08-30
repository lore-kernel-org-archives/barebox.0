Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R5eMK-0004Mu-14
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 13:58:10 +0000
Received: by bkat2 with SMTP id t2so6006143bka.36
	for <barebox@lists.infradead.org>; Mon, 19 Sep 2011 06:58:05 -0700 (PDT)
Message-Id: <201109191357.p8JDvNOw019836@home.pavel.comp>
From: Paul Fertser <fercerpav@gmail.com>
Date: Tue, 30 Aug 2011 10:30:51 +0400
In-Reply-To: <20110912102125.GS31404@pengutronix.de>
References: <3c14dbb81191e6dcf1ecc7ef799834f52ad5f10a.1314685868.git.fercerpav@gmail.com>
	<6a487d727c7d0e29b35276f5780fd91e116f79d8.1314685868.git.fercerpav@gmail.com>
	<20110912102125.GS31404@pengutronix.de>
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
Subject: [PATCH] imx25: imx_spi: support CSPI v0.7 as found on i.MX25
To: barebox@lists.infradead.org

Based on the Linux driver. Tested with m25p80 with CS in GPIO mode.

Clock setting support is ad-hoc as the corresponding mach is not using
the generic clock infrastructure.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 arch/arm/mach-imx/include/mach/clock.h         |    1 +
 arch/arm/mach-imx/include/mach/devices-imx25.h |    5 +
 arch/arm/mach-imx/include/mach/imx25-regs.h    |    1 +
 arch/arm/mach-imx/speed-imx25.c                |    5 +
 drivers/spi/Kconfig                            |    5 +
 drivers/spi/imx_spi.c                          |  111 ++++++++++++++++++++++++
 6 files changed, 128 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/clock.h b/arch/arm/mach-imx/include/mach/clock.h
index 5b590a2..1082178 100644
--- a/arch/arm/mach-imx/include/mach/clock.h
+++ b/arch/arm/mach-imx/include/mach/clock.h
@@ -29,6 +29,7 @@ ulong imx_get_uartclk(void);
 ulong imx_get_lcdclk(void);
 ulong imx_get_i2cclk(void);
 ulong imx_get_mmcclk(void);
+ulong imx_get_cspiclk(void);
 
 int imx_clko_set_div(int div);
 void imx_clko_set_src(int src);
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
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index 68b50e9..150adb2 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -87,6 +87,11 @@ unsigned long imx_get_mmcclk(void)
 	return imx_get_perclk(3);
 }
 
+unsigned long imx_get_cspiclk(void)
+{
+	return imx_get_ipgclk();
+}
+
 void imx_dump_clocks(void)
 {
 	printf("mpll:    %10ld Hz\n", imx_get_mpllclk());
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
index 6dc41b9..f0d2a36 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -27,6 +27,7 @@
 #include <gpio.h>
 #include <mach/spi.h>
 #include <mach/generic.h>
+#include <mach/clock.h>
 
 #define CSPI_0_0_RXDATA		0x00
 #define CSPI_0_0_TXDATA		0x04
@@ -65,6 +66,22 @@
 
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
@@ -206,6 +223,89 @@ static void cspi_0_0_init(struct imx_spi *imx)
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
+	reg |= spi_imx_clkdiv_2(imx_get_cspiclk(), spi->max_speed_hz) <<
+		CSPI_0_7_CTRL_DR_SHIFT;
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
@@ -342,6 +442,13 @@ static struct spi_imx_devtype_data spi_imx_devtype_data[] = {
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
@@ -372,6 +479,10 @@ static int imx_spi_probe(struct device_d *dev)
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
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
