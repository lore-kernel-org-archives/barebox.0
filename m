Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsdNE-0003gv-4L
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 18:26:27 +0000
Received: by mail-ee0-f53.google.com with SMTP id c41so1200308eek.40
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 11:25:57 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 28 Jun 2013 20:25:45 +0200
Message-Id: <1372443947-12599-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/6] spi: add Marvell MVEBU SoC SPI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds support for the SPI controller found on Marvell MVEBU SoCs
(Dove, Kirkwood, Discovery Innovation, and Armada 370/XP). Current driver
is DT only. Compatible strings are provided for Orion (common denominator),
Armada 370/XP and Dove SoCs.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/spi/Kconfig     |    4 +
 drivers/spi/Makefile    |    1 +
 drivers/spi/mvebu_spi.c |  378 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 383 insertions(+), 0 deletions(-)
 create mode 100644 drivers/spi/mvebu_spi.c

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index c279c21..422693c 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -38,6 +38,10 @@ config DRIVER_SPI_MXS
 	depends on ARCH_IMX23 || ARCH_IMX28
 	depends on SPI
 
+config DRIVER_SPI_MVEBU
+	bool "Marvell MVEBU SoC SPI master driver"
+	depends on ARCH_ARMADA_370 || ARCH_ARMADA_XP || ARCH_DOVE || ARCH_KIRKWOOD
+
 config DRIVER_SPI_OMAP3
 	bool "OMAP3 McSPI Master driver"
 	depends on ARCH_OMAP3 || ARCH_AM33XX
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 642b7ec..1036f8f 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_SPI) += spi.o
 obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
+obj-$(CONFIG_DRIVER_SPI_MVEBU) += mvebu_spi.o
 obj-$(CONFIG_DRIVER_SPI_MXS) += mxs_spi.o
 obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
 obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
new file mode 100644
index 0000000..200523d
--- /dev/null
+++ b/drivers/spi/mvebu_spi.c
@@ -0,0 +1,378 @@
+/*
+ * Marvell MVEBU SoC SPI controller
+ *  compatible with Dove, Kirkwood, MV78x00, Armada 370/XP
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+#include <spi/spi.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#define SPI_IF_CTRL		0x00
+#define  IF_CS_NUM(x)		((x) << 2)
+#define  IF_CS_NUM_MASK		IF_CS_NUM(7)
+#define  IF_READ_READY		BIT(1)
+#define  IF_CS_ENABLE		BIT(0)
+#define SPI_IF_CONFIG		0x04
+#define  IF_CLK_DIV(x)		((x) << 11)
+#define  IF_CLK_DIV_MASK	(0x7 << 11)
+#define  IF_FAST_READ		BIT(10)
+#define  IF_ADDRESS_LEN_4BYTE	(3 << 8)
+#define  IF_ADDRESS_LEN_3BYTE	(2 << 8)
+#define  IF_ADDRESS_LEN_2BYTE	(1 << 8)
+#define  IF_ADDRESS_LEN_1BYTE	(0 << 8)
+#define  IF_CLK_PRESCALE_POW8	BIT(7)
+#define  IF_CLK_PRESCALE_POW4	BIT(6)
+#define  IF_TRANSFER_2BYTE	BIT(5)
+#define  IF_CLK_PRESCALE_POW2	BIT(4)
+#define  IF_CLK_PRESCALE(x)	((x) & 0x0f)
+#define  IF_CLK_PRE_PRESCALE(x)	(((((x) & 0xc) << 1) | ((x) & 0x1)) << 4)
+#define  IF_CLK_PRESCALE_MASK	(IF_CLK_PRESCALE(7) | IF_CLK_PRE_PRESCALE(7))
+#define SPI_DATA_OUT		0x08
+#define SPI_DATA_IN		0x0c
+#define SPI_INT_CAUSE		0x10
+#define SPI_INT_MASK		0x14
+#define  INT_READ_READY		BIT(0)
+
+#define SPI_SPI_MAX_CS	8
+
+struct mvebu_spi {
+	struct spi_master master;
+	void __iomem *base;
+	struct clk *clk;
+	bool data16;
+	int (*set_baudrate)(struct mvebu_spi *p, u32 speed);
+};
+
+#define priv_from_spi_device(s)	\
+	container_of(s->master, struct mvebu_spi, master);
+
+static inline int mvebu_spi_set_cs(struct mvebu_spi *p, u8 cs, u8 mode, bool en)
+{
+	u32 val;
+
+	/*
+	 * Only Armada 370/XP support up to 8 CS signals, for the
+	 * others this register bits are read-only
+	 */
+	if (cs > SPI_SPI_MAX_CS)
+		return -EINVAL;
+
+	if (mode & SPI_CS_HIGH)
+		en = !en;
+
+	val = IF_CS_NUM(cs);
+	if (en)
+		val |= IF_CS_ENABLE;
+
+	writel(val, p->base + SPI_IF_CTRL);
+
+	return 0;
+}
+
+static int mvebu_spi_set_transfer_size(struct mvebu_spi *p, int size)
+{
+	u32 val;
+
+	if (size != 8 && size != 16)
+		return -EINVAL;
+
+	p->data16 = (size == 16);
+
+	val = readl(p->base + SPI_IF_CONFIG) & ~IF_TRANSFER_2BYTE;
+	if (p->data16)
+		val |= IF_TRANSFER_2BYTE;
+	writel(val, p->base + SPI_IF_CONFIG);
+	
+	return 0;
+}
+
+static int mvebu_spi_set_baudrate(struct mvebu_spi *p, u32 speed)
+{
+	u32 pscl, val;
+
+	/* standard prescaler values: 1,2,4,6,...,30 */
+	pscl = DIV_ROUND_UP(clk_get_rate(p->clk), speed);
+	pscl = roundup(pscl, 2);
+
+	debug("%s: clk = %lu, speed = %u, pscl = %d\n",
+		__func__, clk_get_rate(p->clk), speed, pscl);
+
+	if (pscl > 30)
+		return -EINVAL;
+
+	val = readl(p->base + SPI_IF_CONFIG) & ~(IF_CLK_PRESCALE_MASK);
+	val |= IF_CLK_PRESCALE_POW2 | IF_CLK_PRESCALE(pscl/2);
+	writel(val, p->base + SPI_IF_CONFIG);
+
+	return 0;
+}
+
+#if defined(ARCH_ARMADA_370) || defined(ARCH_ARMADA_XP) 
+static int armada_370_xp_spi_set_baudrate(struct mvebu_spi *p, u32 speed)
+{
+	u32 pscl, pdiv, rate, val;
+
+	/* prescaler values: 1,2,3,...,15 */
+	pscl = DIV_ROUND_UP(clk_get_rate(p->clk), speed);
+
+	/* additional prescaler divider: 1, 2, 4, 8, 16, 32, 64, 128 */
+	pdiv = 0; rate = pscl;
+	while (rate > 15 && pdiv <= 7) {
+		rate /= 2;
+		pdiv++;
+	}
+
+	debug("%s: clk = %lu, speed = %u, pscl = %d, pdiv = %d\n",
+		__func__, clk_get_rate(p->clk), speed, pscl, pdiv);
+
+	if (rate > 15 || pdiv > 7)
+		return -EINVAL;
+
+	val = readl(p->base + SPI_IF_CONFIG) & ~(IF_CLK_PRESCALE_MASK);
+	val |= IF_CLK_PRE_PRESCALE(pdiv) | IF_CLK_PRESCALE(pscl);
+	writel(val, p->base + SPI_IF_CONFIG);
+
+	return 0;
+}
+#endif
+
+#if defined(ARCH_DOVE)
+static int dove_spi_set_baudrate(struct mvebu_spi *p, u32 speed)
+{
+	u32 pscl, sdiv, rate, val;
+
+	/* prescaler values: 1,2,3,...,15 and 1,2,4,6,...,30 */
+	pscl = DIV_ROUND_UP(clk_get_rate(p->clk), speed);
+	if (pscl > 15)
+		pscl = roundup(pscl, 2);
+
+	/* additional sclk divider: 1, 2, 4, 8, 16 */
+	sdiv = 0; rate = pscl;
+	while (rate > 30 && sdiv <= 4) {
+		rate /= 2;
+		sdiv++;
+	}
+
+	debug("%s: clk = %lu, speed = %u, pscl = %d, sdiv = %d\n",
+		__func__, clk_get_rate(p->clk), speed, pscl, sdiv);
+
+	if (rate > 30 || sdiv > 4)
+		return -EINVAL;
+
+	val = readl(p->base + SPI_IF_CONFIG) &
+		~(IF_CLK_DIV_MASK | IF_CLK_PRESCALE_MASK);
+
+	val |= IF_CLK_DIV(sdiv);
+	if (pscl > 15)
+		val |= IF_CLK_PRESCALE_POW2 | IF_CLK_PRESCALE(pscl/2);
+	else
+		val |= IF_CLK_PRESCALE(pscl);
+	writel(val, p->base + SPI_IF_CONFIG);
+
+	return 0;
+}
+#endif
+
+static int mvebu_spi_set_mode(struct mvebu_spi *p, u8 mode)
+{
+	/*
+	 * From public datasheets of Orion SoCs, it is unclear
+	 * if the SPI controller supports setting CPOL/CPHA.
+	 * Dove has an SCK_INV but as with the other SoCs, it
+	 * is tagged with "Must be 1".
+	 *
+	 * For now, we just bail out if device requests any
+	 * other mode than SPI_MODE0.
+	 */
+
+	if ((mode & (SPI_CPOL|SPI_CPHA)) == SPI_MODE_0)
+		return 0;
+
+	pr_err("%s: unsupported SPI mode %02x\n", __func__, mode);
+
+	return -EINVAL;
+}
+
+static int mvebu_spi_setup(struct spi_device *spi)
+{
+	int ret;
+	struct mvebu_spi *priv = priv_from_spi_device(spi);
+
+	debug("%s: mode %02x, bits_per_word = %d, speed = %d\n",
+		__func__, spi->mode, spi->bits_per_word, spi->max_speed_hz);
+
+	ret = mvebu_spi_set_cs(priv, spi->chip_select, spi->mode, false);
+	if (ret)
+		return ret;
+	ret = mvebu_spi_set_mode(priv, spi->mode);
+	if (ret)
+		return ret;
+	ret = mvebu_spi_set_transfer_size(priv, spi->bits_per_word);
+	if (ret)
+		return ret;
+
+	return priv->set_baudrate(priv, spi->max_speed_hz);
+}
+
+static inline int mvebu_spi_wait_for_read_ready(struct mvebu_spi *p)
+{
+	int timeout = 100;
+	while ((readl(p->base + SPI_IF_CTRL) & IF_READ_READY) == 0 &&
+		timeout--)
+		udelay(1);
+	if (timeout < 0)
+		return -EIO;
+	return 0;
+}
+
+static int mvebu_spi_do_transfer(struct spi_device *spi,
+				 struct spi_transfer *t)
+{
+	const u8 *txdata = t->tx_buf;
+	u8 *rxdata = t->rx_buf;
+	int ret = 0, n, inc;
+	struct mvebu_spi *priv = priv_from_spi_device(spi);
+
+	if (t->bits_per_word)
+		ret = mvebu_spi_set_transfer_size(priv, spi->bits_per_word);
+	if (ret)
+		return ret;
+
+	if (t->speed_hz)
+		ret = priv->set_baudrate(priv, t->speed_hz);
+	if (ret)
+		return ret;
+
+	inc = (priv->data16) ? 2 : 1;
+	for (n = 0; n < t->len; n += inc) {
+		u32 data = 0;
+
+		if (txdata)
+			data = *txdata++;
+		if (txdata && priv->data16)
+			data |= (*txdata++ << 8);
+
+		writel(data, priv->base + SPI_DATA_OUT);
+
+		ret = mvebu_spi_wait_for_read_ready(priv);
+		if (ret) {
+			dev_err(&spi->dev, "timeout reading from device %s\n",
+				dev_name(&spi->dev));
+			return ret;
+		}
+
+		data = readl(priv->base + SPI_DATA_IN);
+
+		if (rxdata)
+			*rxdata++ = (data & 0xff);
+		if (rxdata && priv->data16)
+			*rxdata++ = (data >> 8) & 0xff;
+	}
+
+	return 0;
+}
+
+static int mvebu_spi_transfer(struct spi_device *spi, struct spi_message *msg)
+{
+	struct spi_transfer *t;
+	int ret;
+	struct mvebu_spi *priv = priv_from_spi_device(spi);
+
+	ret = mvebu_spi_set_cs(priv, spi->chip_select, spi->mode, true);
+	if (ret)
+		return ret;
+
+	msg->actual_length = 0;
+
+	list_for_each_entry(t, &msg->transfers, transfer_list) {
+		ret = mvebu_spi_do_transfer(spi, t);
+		if (ret)
+			break;
+		msg->actual_length += t->len;
+	}
+
+	ret = mvebu_spi_set_cs(priv, spi->chip_select, spi->mode, false);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+static struct of_device_id mvebu_spi_dt_ids[] = {
+	{ .compatible = "marvell,orion-spi",
+	  .data = (unsigned long)&mvebu_spi_set_baudrate },
+#if defined(ARCH_ARMADA_370) || defined(ARCH_ARMADA_XP) 
+	{ .compatible = "marvell,armada-370-xp-spi",
+	  .data = (unsigned long)&armada_370_xp_spi_set_baudrate },
+#endif
+#if defined(ARCH_DOVE)
+	{ .compatible = "marvell,dove-spi",
+	  .data = (unsigned long)&dove_spi_set_baudrate },
+#endif
+	{ }
+};
+
+static int mvebu_spi_probe(struct device_d *dev)
+{
+	struct spi_master *master;
+	struct mvebu_spi *priv;
+	const struct of_device_id *match;
+	int ret = 0;
+
+	match = of_match_node(mvebu_spi_dt_ids, dev->device_node);
+	if (!match)
+		return -EINVAL;
+
+	priv = xzalloc(sizeof(*priv));
+	priv->base = dev_request_mem_region(dev, 0);
+	priv->set_baudrate = (void *)match->data;
+	priv->clk = clk_lookup("tclk");
+	if (IS_ERR(priv->clk)) {
+		ret = PTR_ERR(priv->clk);
+		goto err_free;
+	}
+
+	master = &priv->master;
+	master->dev = dev;
+	master->bus_num = dev->id;
+	master->setup = mvebu_spi_setup;
+	master->transfer = mvebu_spi_transfer;
+	master->num_chipselect = 1;
+
+	if (dev->device_node)
+		spi_of_register_slaves(master, dev->device_node);
+
+	ret = spi_register_master(master);
+	if (!ret)
+		return 0;
+
+err_free:
+	free(priv);
+
+	return ret;
+}
+
+static struct driver_d mvebu_spi_driver = {
+	.name  = "mvebu-spi",
+	.probe = mvebu_spi_probe,
+	.of_compatible = DRV_OF_COMPAT(mvebu_spi_dt_ids),
+};
+device_platform_driver(mvebu_spi_driver);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
