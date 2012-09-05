Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Htv-0007FN-V8
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 15:52:30 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  5 Sep 2012 17:52:13 +0200
Message-Id: <1346860337-777-6-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 5/8] drivers/net/ksz8864rmn: add driver for Micrel KSZ8864RMN
 Ethernet Switch
To: barebox@lists.infradead.org

It starts the switch and provides basic access to the registers.

This driver could also work with some other Micrel switches, possibly
with some small changes.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/net/Kconfig      |    7 ++
 drivers/net/Makefile     |    1 +
 drivers/net/ksz8864rmn.c |  233 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 241 insertions(+)
 create mode 100644 drivers/net/ksz8864rmn.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 3c5f729..dac1eb9 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -125,5 +125,12 @@ config DRIVER_NET_GIANFAR
 
 source "drivers/net/usb/Kconfig"
 
+config DRIVER_NET_MICREL
+	depends on SPI
+	bool "Micrel KSZ8864RMN Ethernet Switch driver"
+	help
+	  This option enables support for enabling the Micrel
+	  KSZ8864RMN Ethernet Switch over SPI.
+
 endmenu
 
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 4d960e8..951a220 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
+obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
new file mode 100644
index 0000000..5851463
--- /dev/null
+++ b/drivers/net/ksz8864rmn.c
@@ -0,0 +1,233 @@
+/*
+ * Copyright (C) 2012 Jan Luebbe, Pengutronix
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
+#include <errno.h>
+
+#define REG_ID0			0x00
+#define REG_ID1			0x01
+
+#define REG_GC00		0x02
+#define REG_GC01		0x03
+#define REG_GC02		0x04
+#define REG_GC03		0x05
+#define REG_GC04		0x06
+#define REG_GC05		0x07
+#define REG_GC06		0x08
+#define REG_GC07		0x09
+#define REG_GC08		0x0a
+#define REG_GC09		0x0b
+#define REG_GC10		0x0c
+#define REG_GC11		0x0d
+
+#define REG_PSTAT1(p)		(0x10 * p + 0xe)
+#define REG_PSTAT2(p)		(0x10 * p + 0xf)
+
+#define CMD_WRITE		0x02
+#define CMD_READ		0x03
+
+struct micrel_switch_priv {
+	struct cdev             cdev;
+	struct spi_device       *spi;
+};
+
+static int micrel_switch_read_reg(struct spi_device *spi, uint8_t reg)
+{
+	uint8_t tx[2];
+	uint8_t rx[1];
+	int ret;
+
+	tx[0] = CMD_READ;
+	tx[1] = reg;
+
+	ret = spi_write_then_read(spi, tx, 2, rx, 1);
+	if (ret < 0)
+		return ret;
+
+	return rx[0];
+}
+
+static void micrel_switch_write_reg(struct spi_device *spi, uint8_t reg, uint8_t val)
+{
+	uint8_t tx[3];
+
+	tx[0] = CMD_WRITE;
+	tx[1] = reg;
+	tx[2] = val;
+
+	spi_write_then_read(spi, tx, 3, NULL, 0);
+}
+
+static int micrel_switch_enable_set(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	struct spi_device *spi = (struct spi_device *)dev->type_data;
+	int enable;
+	char *new;
+
+	if (!val)
+		return dev_param_set_generic(dev, param, NULL);
+
+	enable = simple_strtoul(val, NULL, 0);
+
+	if (enable) {
+		micrel_switch_write_reg(spi, REG_ID1, 1);
+		new = "1";
+	} else {
+		micrel_switch_write_reg(spi, REG_ID1, 0);
+		new = "0";
+	}
+
+	dev_param_set_generic(dev, param, new);
+
+	return 0;
+}
+
+static void micrel_switch_print_reg(struct spi_device *spi, const char *name, uint8_t reg)
+{
+	uint8_t tx[2];
+	uint8_t rx[1];
+	int ret;
+
+	tx[0] = CMD_READ;
+	tx[1] = reg;
+
+	ret = spi_write_then_read(spi, tx, 2, rx, 1);
+	if (ret < 0)
+		printf("%s@0x%02x: SPI error\n", name, reg);
+
+	printf("%s@0x%02x: 0x%02x\n", name, reg, rx[0]);
+}
+
+static void micrel_switch_info(struct device_d *dev)
+{
+	struct spi_device *spi = (struct spi_device *)dev->type_data;
+
+	printf("Registers:\n");
+	micrel_switch_print_reg(spi, " Chip ID 0", REG_ID0);
+	micrel_switch_print_reg(spi, " Chip ID 1", REG_ID1);
+	micrel_switch_print_reg(spi, " Global Control  0", REG_GC00);
+	micrel_switch_print_reg(spi, " Global Control  1", REG_GC01);
+	micrel_switch_print_reg(spi, " Global Control  2", REG_GC02);
+	micrel_switch_print_reg(spi, " Global Control  3", REG_GC03);
+	micrel_switch_print_reg(spi, " Global Control  4", REG_GC04);
+	micrel_switch_print_reg(spi, " Global Control  5", REG_GC05);
+	micrel_switch_print_reg(spi, " Global Control  6", REG_GC06);
+	micrel_switch_print_reg(spi, " Global Control  7", REG_GC07);
+	micrel_switch_print_reg(spi, " Global Control  8", REG_GC08);
+	micrel_switch_print_reg(spi, " Global Control  9", REG_GC09);
+	micrel_switch_print_reg(spi, " Global Control 10", REG_GC10);
+	micrel_switch_print_reg(spi, " Global Control 11", REG_GC11);
+	micrel_switch_print_reg(spi, " Port 1 Status 1", REG_PSTAT1(1));
+	micrel_switch_print_reg(spi, " Port 1 Status 2", REG_PSTAT2(1));
+	micrel_switch_print_reg(spi, " Port 2 Status 1", REG_PSTAT1(2));
+	micrel_switch_print_reg(spi, " Port 2 Status 2", REG_PSTAT2(2));
+}
+
+static ssize_t micel_switch_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
+{
+	int i, ret;
+	uint8_t *buf = _buf;
+	struct micrel_switch_priv *priv = cdev->priv;
+
+	for (i = 0; i < count; i++) {
+		ret = micrel_switch_read_reg(priv->spi, offset);
+		if (ret < 0)
+			return ret;
+		*buf = ret;
+		buf++;
+		offset++;
+	}
+
+	return count;
+}
+
+static ssize_t micel_switch_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
+{
+	int i;
+	const uint8_t *buf = _buf;
+	struct micrel_switch_priv *priv = cdev->priv;
+
+	for (i = 0; i < count; i++) {
+		micrel_switch_write_reg(priv->spi, offset, *buf);
+		buf++;
+		offset++;
+	}
+
+	return count;
+}
+
+static struct file_operations micrel_switch_ops = {
+	.read  = micel_switch_read,
+	.write = micel_switch_write,
+	.lseek = dev_lseek_default,
+};
+
+static int micrel_switch_probe(struct device_d *dev)
+{
+	struct micrel_switch_priv *priv;
+	int ret = 0;
+
+	priv = xzalloc(sizeof(*priv));
+
+	dev->priv = priv;
+
+	priv->spi = (struct spi_device *)dev->type_data;
+	priv->spi->mode = SPI_MODE_0;
+	priv->spi->bits_per_word = 8;
+
+	ret = micrel_switch_read_reg(priv->spi, REG_ID0);
+	if (ret < 0) {
+		dev_err(&priv->spi->dev, "failed to read device id\n");
+		return ret;
+	}
+	if (ret != 0x95) {
+		dev_err(&priv->spi->dev, "unknown device id: %02x\n", ret);
+		return -ENODEV;
+	}
+
+	priv->cdev.name = asprintf("switch%d", dev->id);
+	priv->cdev.size = 256;
+	priv->cdev.ops = &micrel_switch_ops;
+	priv->cdev.priv = priv;
+	priv->cdev.dev = dev;
+	devfs_create(&priv->cdev);
+
+	dev_add_param(dev, "enable", micrel_switch_enable_set, NULL, 0);
+	dev_set_param(dev, "enable", "1");
+
+	return 0;
+}
+
+static struct driver_d micrel_switch_driver = {
+	.name  = "ksz8864rmn",
+	.probe = micrel_switch_probe,
+	.info  = micrel_switch_info,
+};
+
+static int micrel_switch_init(void)
+{
+	register_driver(&micrel_switch_driver);
+	return 0;
+}
+device_initcall(micrel_switch_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
