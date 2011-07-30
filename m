Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnFzV-0006Ig-JH
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 20:18:34 +0000
Received: by wwf22 with SMTP id 22so3169435wwf.18
	for <barebox@lists.infradead.org>; Sat, 30 Jul 2011 13:18:29 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sat, 30 Jul 2011 22:18:23 +0200
Message-Id: <1312057103-29658-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] nios2: Add Altera SPI master driver
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/include/asm/spi.h |   21 ++++
 drivers/spi/Kconfig          |    5 +
 drivers/spi/Makefile         |    1 +
 drivers/spi/altera_spi.c     |  226 ++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 253 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/spi.h
 create mode 100644 drivers/spi/altera_spi.c

diff --git a/arch/nios2/include/asm/spi.h b/arch/nios2/include/asm/spi.h
new file mode 100644
index 0000000..4e576b9
--- /dev/null
+++ b/arch/nios2/include/asm/spi.h
@@ -0,0 +1,21 @@
+#ifndef __ALTERA_SPI_H_
+#define __ALTERA_SPI_H_
+
+#include <spi/spi.h>
+
+struct spi_altera_master {
+	int	num_chipselect;
+	int	spi_mode;
+	int	databits;
+	int	speed;
+};
+
+struct altera_spi {
+	struct spi_master	master;
+	int			databits;
+	int			speed;
+	int			mode;
+	void __iomem		*regs;
+};
+
+#endif /*__ALTERA_SPI_H_*/
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 9ab03f6..c72493c 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -19,4 +19,9 @@ config DRIVER_SPI_IMX_2_3
 	depends on ARCH_IMX51 || ARCH_IMX53
 	default y
 
+config DRIVER_SPI_ALTERA
+	bool "Altera SPI Master driver"
+	depends on NIOS2
+	depends on SPI
+
 endmenu
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index b2b2f67..90e141d 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_SPI) += spi.o
 obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
+obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
new file mode 100644
index 0000000..71df6b7
--- /dev/null
+++ b/drivers/spi/altera_spi.c
@@ -0,0 +1,226 @@
+/*
+ * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
+ * Inspired from Thomas Chou's Linux spi_altera.c driver
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <spi/spi.h>
+#include <asm/io.h>
+#include <asm/spi.h>
+#include <asm/nios2-io.h>
+
+#define CS_ACTIVE	1
+#define CS_INACTIVE	0
+
+static int altera_spi_setup(struct spi_device *spi)
+{
+	struct spi_master *master = spi->master;
+	struct device_d *master_dev = master->dev;
+	struct device_d spi_dev = spi->dev;
+	struct altera_spi *altera_spi = container_of(master, struct altera_spi, master);
+
+	if (spi->bits_per_word != altera_spi->databits) {
+		printf("%s doesn't support %d bits per word requested by %s\n", master_dev->name,
+			spi->bits_per_word, spi_dev.name);
+		return -1;
+	}
+
+	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != altera_spi->mode) {
+		printf("%s doesn't support SPI_MODE%d requested by %s\n", master_dev->name,
+			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
+		return -1;
+	}
+
+	if (spi->max_speed_hz < altera_spi->speed) {
+		printf("%s frequency is too high for %s\n", master_dev->name, spi_dev.name);
+		return -1;
+	}
+
+	debug("%s mode 0x%08x bits_per_word: %d speed: %d\n",
+			__func__, spi->mode, spi->bits_per_word,
+			altera_spi->speed);
+
+	return 0;
+}
+
+
+static unsigned int altera_spi_xchg_single(struct altera_spi *altera_spi, unsigned int data)
+{
+	struct nios_spi *nios_spi = altera_spi->regs;
+
+	while (!(readl(&nios_spi->status) & NIOS_SPI_TRDY));
+	writel(data, &nios_spi->txdata);
+
+	while (!(readl(&nios_spi->status) & NIOS_SPI_RRDY));
+
+	return readl(&nios_spi->rxdata);
+}
+
+/*
+ * When using SPI_CS_HIGH devices, only one device is allowed to be
+ * connected to the Altera SPI master. This limitation is due to the
+ * emulation of an active high CS by writing 0 to the slaveselect register
+ * (this produce a '1' to all CS pins).
+ */
+static void altera_spi_chipselect(struct spi_device *spi, int is_active)
+{
+	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
+	struct nios_spi *nios_spi = altera_spi->regs;
+	uint32_t tmp;
+
+	if (spi->mode & SPI_CS_HIGH) {
+		switch (is_active) {
+		case CS_INACTIVE:
+			writel(1 << spi->chip_select, &nios_spi->slaveselect);
+			tmp = readl(&nios_spi->control);
+			writel(tmp | NIOS_SPI_SSO, &nios_spi->control);
+			break;
+
+		case CS_ACTIVE:
+			tmp = readw(&nios_spi->control);
+			writew(tmp & ~NIOS_SPI_SSO, &nios_spi->control);
+			writel(0, &nios_spi->slaveselect);
+			break;
+		}
+	} else {
+		switch (is_active) {
+		case CS_INACTIVE:
+			tmp = readw(&nios_spi->control);
+			writew(tmp & ~NIOS_SPI_SSO, &nios_spi->control);
+			break;
+
+		case CS_ACTIVE:
+			writel(1 << spi->chip_select, &nios_spi->slaveselect);
+			tmp = readl(&nios_spi->control);
+			writel(tmp | NIOS_SPI_SSO, &nios_spi->control);
+			break;
+		}
+	}
+}
+
+static int altera_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
+{
+	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
+	struct nios_spi *nios_spi = altera_spi->regs;
+	struct spi_transfer	*t = NULL;
+	int word_len =  spi->bits_per_word;
+
+	u32 txval;
+	u32 rxval;
+
+	altera_spi_chipselect(spi, 1);
+
+	word_len = spi->bits_per_word;
+	mesg->actual_length = 0;
+
+	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+
+		if (word_len <= 8) {
+			const u8 *txbuf = t->tx_buf;
+			u8 *rxbuf = t->rx_buf;
+			int i = 0;
+
+			while (i < t->len) {
+				txval = txbuf ? txbuf[i] : 0;
+				rxval = altera_spi_xchg_single(altera_spi, txval);
+				if (rxbuf)
+					rxbuf[i] = rxval;
+				i++;
+				mesg->actual_length++;
+			}
+		} else if (word_len <= 16) {
+			const u16 *txbuf = t->tx_buf;
+			u16 *rxbuf = t->rx_buf;
+			int i = 0;
+
+			while (i < t->len >> 1) {
+				txval = txbuf ? txbuf[i] : 0;
+				rxval = altera_spi_xchg_single(altera_spi, txval);
+				if (rxbuf)
+					rxbuf[i] = rxval;
+				i++;
+				mesg->actual_length += 2;
+			}
+		} else if (word_len <= 32) {
+			const u32 *txbuf = t->tx_buf;
+			u32 *rxbuf = t->rx_buf;
+			int i = 0;
+
+			while (i < t->len >> 2) {
+				txval = txbuf ? txbuf[i] : 0;
+				rxval = altera_spi_xchg_single(altera_spi, txval);
+				if (rxbuf)
+					rxbuf[i] = rxval;
+				i++;
+				mesg->actual_length += 4;
+			}
+		}
+	}
+
+	/* Wait the end of any pending transfert */
+	while ((readl(&nios_spi->status) & NIOS_SPI_TMT) == 0);
+
+	altera_spi_chipselect(spi, 0);
+
+	return 0;
+}
+
+static int altera_spi_probe(struct device_d *dev)
+{
+	struct spi_master *master;
+	struct altera_spi *altera_spi;
+	struct spi_altera_master *pdata = dev->platform_data;
+	struct nios_spi *nios_spi;
+
+	altera_spi = xzalloc(sizeof(*altera_spi));
+
+	master = &altera_spi->master;
+	master->dev = dev;
+
+	master->setup = altera_spi_setup;
+	master->transfer = altera_spi_transfer;
+	master->num_chipselect = pdata->num_chipselect;
+
+	altera_spi->regs = dev_request_mem_region(dev, 0);
+	altera_spi->databits = pdata->databits;
+	altera_spi->speed = pdata->speed;
+	altera_spi->mode = pdata->spi_mode;
+
+	nios_spi = altera_spi->regs;
+	writel(0, &nios_spi->slaveselect);
+	writel(0, &nios_spi->control);
+
+	spi_register_master(master);
+
+	return 0;
+}
+
+static struct driver_d altera_spi_driver = {
+	.name  = "altera_spi",
+	.probe = altera_spi_probe,
+};
+
+static int altera_spi_driver_init(void)
+{
+	return register_driver(&altera_spi_driver);
+}
+
+device_initcall(altera_spi_driver_init);
-- 
1.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
