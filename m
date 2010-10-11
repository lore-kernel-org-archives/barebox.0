Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003G3-Uf
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:14 +0200
Message-Id: <1286796505-16049-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/17] spi i.MX: Add i.MX51 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/Kconfig   |   10 +++
 drivers/spi/imx_spi.c |  169 ++++++++++++++++++++++++++++++++++++++++++++++---
 2 files changed, 171 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 3eebd08..2b8d2f4 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -9,6 +9,16 @@ config DRIVER_SPI_IMX
 	depends on ARCH_IMX
 	depends on SPI
 
+config DRIVER_SPI_IMX_0_0
+	bool
+	depends on ARCH_IMX27
+	default y
+
+config DRIVER_SPI_IMX_2_3
+	bool
+	depends on ARCH_IMX51
+	default y
+
 config DRIVER_SPI_MC13783
 	bool "MC13783 a.k.a. PMIC driver"
 	depends on SPI
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 1abab5f..2ad1bfa 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -65,6 +65,30 @@
 
 #define CSPI_0_0_TEST_LBC		(1 << 14)
 
+#define CSPI_2_3_RXDATA		0x00
+#define CSPI_2_3_TXDATA		0x04
+#define CSPI_2_3_CTRL		0x08
+#define CSPI_2_3_CTRL_ENABLE		(1 <<  0)
+#define CSPI_2_3_CTRL_XCH		(1 <<  2)
+#define CSPI_2_3_CTRL_MODE(cs)	(1 << ((cs) +  4))
+#define CSPI_2_3_CTRL_POSTDIV_OFFSET	8
+#define CSPI_2_3_CTRL_PREDIV_OFFSET	12
+#define CSPI_2_3_CTRL_CS(cs)		((cs) << 18)
+#define CSPI_2_3_CTRL_BL_OFFSET	20
+
+#define CSPI_2_3_CONFIG	0x0c
+#define CSPI_2_3_CONFIG_SCLKPHA(cs)	(1 << ((cs) +  0))
+#define CSPI_2_3_CONFIG_SCLKPOL(cs)	(1 << ((cs) +  4))
+#define CSPI_2_3_CONFIG_SBBCTRL(cs)	(1 << ((cs) +  8))
+#define CSPI_2_3_CONFIG_SSBPOL(cs)	(1 << ((cs) + 12))
+
+#define CSPI_2_3_INT		0x10
+#define CSPI_2_3_INT_TEEN		(1 <<  0)
+#define CSPI_2_3_INT_RREN		(1 <<  3)
+
+#define CSPI_2_3_STAT		0x18
+#define CSPI_2_3_STAT_RR		(1 <<  3)
+
 enum imx_spi_devtype {
 #ifdef CONFIG_DRIVER_SPI_IMX1
 	SPI_IMX_VER_IMX1,
@@ -93,11 +117,13 @@ struct imx_spi {
 
 	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
 	void			(*chipselect)(struct spi_device *spi, int active);
+	void			(*init)(struct imx_spi *imx);
 };
 
 struct spi_imx_devtype_data {
 	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
 	void			(*chipselect)(struct spi_device *spi, int active);
+	void			(*init)(struct imx_spi *imx);
 };
 
 static int imx_spi_setup(struct spi_device *spi)
@@ -130,7 +156,7 @@ static void cspi_0_0_chipselect(struct spi_device *spi, int is_active)
 {
 	struct spi_master *master = spi->master;
 	struct imx_spi *imx = container_of(master, struct imx_spi, master);
-	ulong base = master->dev->map_base;
+	void __iomem *base = imx->regs;
 	unsigned int cs = 0;
 	int gpio = imx->cs_array[spi->chip_select];
 	u32 ctrl_reg;
@@ -165,6 +191,126 @@ static void cspi_0_0_chipselect(struct spi_device *spi, int is_active)
 	if (gpio >= 0)
 		gpio_set_value(gpio, cs);
 }
+
+static void cspi_0_0_init(struct imx_spi *imx)
+{
+	void __iomem *base = imx->regs;
+
+	writel(CSPI_0_0_CTRL_ENABLE | CSPI_0_0_CTRL_MASTER,
+		     base + CSPI_0_0_CTRL);
+	writel(CSPI_0_0_PERIOD_32KHZ,
+		     base + CSPI_0_0_PERIOD);
+	while (readl(base + CSPI_0_0_INT) & CSPI_0_0_STAT_RR)
+		readl(base + CSPI_0_0_RXDATA);
+	writel(0, base + CSPI_0_0_INT);
+}
+#endif
+
+#ifdef CONFIG_DRIVER_SPI_IMX_2_3
+static unsigned int cspi_2_3_xchg_single(struct imx_spi *imx, unsigned int data)
+{
+	void __iomem *base = imx->regs;
+
+	unsigned int cfg_reg = readl(base + CSPI_2_3_CTRL);
+
+	writel(data, base + CSPI_2_3_TXDATA);
+
+	cfg_reg |= CSPI_2_3_CTRL_XCH;
+
+	writel(cfg_reg, base + CSPI_2_3_CTRL);
+
+	while (!(readl(base + CSPI_2_3_STAT) & CSPI_2_3_STAT_RR));
+
+	return readl(base + CSPI_2_3_RXDATA);
+}
+
+/* FIXME: include/linux/kernel.h */
+#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
+
+static unsigned int cspi_2_3_clkdiv(unsigned int fin, unsigned int fspi)
+{
+	/*
+	 * there are two 4-bit dividers, the pre-divider divides by
+	 * $pre, the post-divider by 2^$post
+	 */
+	unsigned int pre, post;
+
+	if (unlikely(fspi > fin))
+		return 0;
+
+	post = fls(fin) - fls(fspi);
+	if (fin > fspi << post)
+		post++;
+
+	/* now we have: (fin <= fspi << post) with post being minimal */
+
+	post = max(4U, post) - 4;
+	if (unlikely(post > 0xf)) {
+		pr_err("%s: cannot set clock freq: %u (base freq: %u)\n",
+				__func__, fspi, fin);
+		return 0xff;
+	}
+
+	pre = DIV_ROUND_UP(fin, fspi << post) - 1;
+
+	pr_debug("%s: fin: %u, fspi: %u, post: %u, pre: %u\n",
+			__func__, fin, fspi, post, pre);
+	return (pre << CSPI_2_3_CTRL_PREDIV_OFFSET) |
+		(post << CSPI_2_3_CTRL_POSTDIV_OFFSET);
+}
+
+static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
+{
+	struct spi_master *master = spi->master;
+	struct imx_spi *imx = container_of(master, struct imx_spi, master);
+	void __iomem *base = imx->regs;
+	unsigned int cs = spi->chip_select, gpio_cs = 0;
+	int gpio = imx->cs_array[spi->chip_select];
+	u32 ctrl, cfg = 0;
+
+	if (spi->mode & SPI_CS_HIGH)
+		gpio_cs = 1;
+
+	if (!is_active) {
+		if (gpio >= 0)
+			gpio_set_value(gpio, !gpio_cs);
+		return;
+	}
+
+	ctrl = CSPI_2_3_CTRL_ENABLE;
+
+	/* set master mode */
+	ctrl |= CSPI_2_3_CTRL_MODE(cs);
+
+	/* set clock speed */
+	ctrl |= cspi_2_3_clkdiv(166000000, spi->max_speed_hz);
+
+	/* set chip select to use */
+	ctrl |= CSPI_2_3_CTRL_CS(cs);
+
+	ctrl |= (spi->bits_per_word - 1) << CSPI_2_3_CTRL_BL_OFFSET;
+
+	cfg |= CSPI_2_3_CONFIG_SBBCTRL(cs);
+
+	if (spi->mode & SPI_CPHA)
+		cfg |= CSPI_2_3_CONFIG_SCLKPHA(cs);
+
+	if (spi->mode & SPI_CPOL)
+		cfg |= CSPI_2_3_CONFIG_SCLKPOL(cs);
+
+	if (spi->mode & SPI_CS_HIGH)
+		cfg |= CSPI_2_3_CONFIG_SSBPOL(cs);
+
+	writel(ctrl, base + CSPI_2_3_CTRL);
+	writel(cfg, base + CSPI_2_3_CONFIG);
+
+	if (gpio >= 0)
+		gpio_set_value(gpio, gpio_cs);
+}
+
+static void cspi_2_3_init(struct imx_spi *imx)
+{
+}
 #endif
 
 static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
@@ -196,6 +342,14 @@ static struct spi_imx_devtype_data spi_imx_devtype_data[] = {
 	[SPI_IMX_VER_0_0] = {
 		.chipselect = cspi_0_0_chipselect,
 		.xchg_single = cspi_0_0_xchg_single,
+		.init = cspi_0_0_init,
+	},
+#endif
+#ifdef CONFIG_DRIVER_SPI_IMX_2_3
+	[SPI_IMX_VER_2_3] = {
+		.chipselect = cspi_2_3_chipselect,
+		.xchg_single = cspi_2_3_xchg_single,
+		.init = cspi_2_3_init,
 	},
 #endif
 };
@@ -221,17 +375,16 @@ static int imx_spi_probe(struct device_d *dev)
 	if (cpu_is_mx27())
 		version = SPI_IMX_VER_0_0;
 #endif
+#ifdef CONFIG_DRIVER_SPI_IMX_2_3
+	if (cpu_is_mx51())
+		version = SPI_IMX_VER_2_3;
+#endif
 	imx->chipselect = spi_imx_devtype_data[version].chipselect;
 	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
+	imx->init = spi_imx_devtype_data[version].init;
 	imx->regs = (void __iomem *)dev->map_base;
 
-	writel(CSPI_0_0_CTRL_ENABLE | CSPI_0_0_CTRL_MASTER,
-		     dev->map_base + CSPI_0_0_CTRL);
-	writel(CSPI_0_0_PERIOD_32KHZ,
-		     dev->map_base + CSPI_0_0_PERIOD);
-	while (readl(dev->map_base + CSPI_0_0_INT) & CSPI_0_0_STAT_RR)
-		readl(dev->map_base + CSPI_0_0_RXDATA);
-	writel(0, dev->map_base + CSPI_0_0_INT);
+	imx->init(imx);
 
 	spi_register_master(master);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
