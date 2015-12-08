Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EDa-0003AO-HD
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:05:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Dec 2015 10:05:37 +0100
Message-Id: <1449565539-29374-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] misc: Add basic LM75 temperature driver
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/Kconfig  |   5 +
 drivers/misc/Makefile |   1 +
 drivers/misc/lm75.c   | 262 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 268 insertions(+)
 create mode 100644 drivers/misc/lm75.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 250b205..b95a7f6 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -22,4 +22,9 @@ config STATE_DRV
 config IODEVICE
 	bool "IO device support"
 
+config LM75
+	tristate "LM75 driver"
+	depends on I2C
+	depends on IODEVICE
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 127504e..a257dfb 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_IODEVICE)		+= iodevice.o
+obj-$(CONFIG_LM75)		+= lm75.o
diff --git a/drivers/misc/lm75.c b/drivers/misc/lm75.c
new file mode 100644
index 0000000..d9e5580
--- /dev/null
+++ b/drivers/misc/lm75.c
@@ -0,0 +1,262 @@
+/*
+ * lm75.c - Part of lm_sensors, Linux kernel modules for hardware
+ *	 monitoring
+ * Copyright (c) 1998, 1999  Frodo Looijaard <frodol@dds.nl>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <i2c/i2c.h>
+#include <iodevice.h>
+
+/*
+ * This driver handles the LM75 and compatible digital temperature sensors.
+ */
+
+/* straight from the datasheet */
+#define LM75_TEMP_MIN (-55000)
+#define LM75_TEMP_MAX 125000
+#define LM75_SHUTDOWN 0x01
+
+enum lm75_type {		/* keep sorted in alphabetical order */
+	adt75,
+	ds1775,
+	ds75,
+	ds7505,
+	g751,
+	lm75,
+	lm75a,
+	lm75b,
+	max6625,
+	max6626,
+	mcp980x,
+	stds75,
+	tcn75,
+	tmp100,
+	tmp101,
+	tmp105,
+	tmp112,
+	tmp175,
+	tmp275,
+	tmp75,
+	tmp75c,
+};
+
+/* The LM75 registers */
+#define LM75_REG_CONF		0x01
+static const u8 LM75_REG_TEMP[3] = {
+	0x00,		/* input */
+	0x03,		/* max */
+	0x02,		/* hyst */
+};
+
+/* Each client has this additional data */
+struct lm75_data {
+	struct i2c_client	*client;
+	struct device_d		dev;
+	u8			resolution;	/* In bits, between 9 and 12 */
+	struct iochannel	iochan;
+	struct iodevice		iodev;
+};
+
+static int lm75_read_value(struct lm75_data *data, u8 reg)
+{
+	if (reg == LM75_REG_CONF)
+		return i2c_smbus_read_byte_data(data->client, reg);
+	else
+		return i2c_smbus_read_word_swapped(data->client, reg);
+}
+
+static int lm75_write_value(struct lm75_data *data, u8 reg, u16 value)
+{
+	if (reg == LM75_REG_CONF)
+		return i2c_smbus_write_byte_data(data->client, reg, value);
+	else
+		return i2c_smbus_write_word_swapped(data->client, reg, value);
+}
+
+static long lm75_reg_to_mc(s16 temp, u8 resolution)
+{
+	return ((temp >> (16 - resolution)) * 1000) >> (resolution - 8);
+}
+
+static int lm75_get_temp(struct iochannel *iochan, int *val)
+{
+	struct lm75_data *data = container_of(iochan, struct lm75_data, iochan);
+	int status;
+
+	status = lm75_read_value(data, LM75_REG_TEMP[0]);
+	if (status < 0) {
+		dev_err(&data->client->dev,
+			"LM75: Failed to read value: reg %d, error %d\n",
+			LM75_REG_TEMP[0], status);
+		return status;
+	}
+
+	*val = lm75_reg_to_mc(status, data->resolution);
+
+	return 0;
+}
+
+static int lm75_probe(struct device_d *dev)
+{
+	struct lm75_data *data;
+	int status;
+	u8 set_mask, clr_mask;
+	int new, ret;
+	enum lm75_type kind;
+
+	ret = dev_get_drvdata(dev, (const void **)&kind);
+	if (ret)
+		return ret;
+
+	data = xzalloc(sizeof(*data));
+
+	data->client = to_i2c_client(dev);
+
+	/* Set to LM75 resolution (9 bits, 1/2 degree C) and range.
+	 * Then tweak to be more precise when appropriate.
+	 */
+	set_mask = 0;
+	clr_mask = LM75_SHUTDOWN;		/* continuous conversions */
+
+	switch (kind) {
+	case adt75:
+		clr_mask |= 1 << 5;		/* not one-shot mode */
+		data->resolution = 12;
+		break;
+	case ds1775:
+	case ds75:
+	case stds75:
+		clr_mask |= 3 << 5;
+		set_mask |= 2 << 5;		/* 11-bit mode */
+		data->resolution = 11;
+		break;
+	case ds7505:
+		set_mask |= 3 << 5;		/* 12-bit mode */
+		data->resolution = 12;
+		break;
+	case g751:
+	case lm75:
+	case lm75a:
+		data->resolution = 9;
+		break;
+	case lm75b:
+		data->resolution = 11;
+		break;
+	case max6625:
+		data->resolution = 9;
+		break;
+	case max6626:
+		data->resolution = 12;
+		break;
+	case tcn75:
+		data->resolution = 9;
+		break;
+	case mcp980x:
+		/* fall through */
+	case tmp100:
+	case tmp101:
+		set_mask |= 3 << 5;		/* 12-bit mode */
+		data->resolution = 12;
+		clr_mask |= 1 << 7;		/* not one-shot mode */
+		break;
+	case tmp112:
+		set_mask |= 3 << 5;		/* 12-bit mode */
+		clr_mask |= 1 << 7;		/* not one-shot mode */
+		data->resolution = 12;
+		break;
+	case tmp105:
+	case tmp175:
+	case tmp275:
+	case tmp75:
+		set_mask |= 3 << 5;		/* 12-bit mode */
+		clr_mask |= 1 << 7;		/* not one-shot mode */
+		data->resolution = 12;
+		break;
+	case tmp75c:
+		clr_mask |= 1 << 5;		/* not one-shot mode */
+		data->resolution = 12;
+		break;
+	}
+
+	/* configure as specified */
+	status = lm75_read_value(data, LM75_REG_CONF);
+	if (status < 0) {
+		dev_dbg(dev, "Can't read config? %d\n", status);
+		return status;
+	}
+
+	new = status & ~clr_mask;
+	new |= set_mask;
+	if (status != new)
+		lm75_write_value(data, LM75_REG_CONF, new);
+
+	data->iodev.num_channels = 1;
+	data->iodev.hwdev = dev;
+	data->iodev.read = lm75_get_temp;
+	data->iodev.channels = xmalloc(sizeof(void *));
+	data->iodev.channels[0] = &data->iochan;
+	data->iochan.unit = "mC";
+
+	ret = iodevice_register(&data->iodev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static const struct platform_device_id lm75_ids[] = {
+	{ .name = "adt75", .driver_data = adt75, },
+	{ .name = "ds1775", .driver_data = ds1775, },
+	{ .name = "ds75", .driver_data = ds75, },
+	{ .name = "ds7505", .driver_data = ds7505, },
+	{ .name = "g751", .driver_data = g751, },
+	{ .name = "lm75", .driver_data = lm75, },
+	{ .name = "lm75a", .driver_data = lm75a, },
+	{ .name = "lm75b", .driver_data = lm75b, },
+	{ .name = "max6625", .driver_data = max6625, },
+	{ .name = "max6626", .driver_data = max6626, },
+	{ .name = "mcp980x", .driver_data = mcp980x, },
+	{ .name = "stds75", .driver_data = stds75, },
+	{ .name = "tcn75", .driver_data = tcn75, },
+	{ .name = "tmp100", .driver_data = tmp100, },
+	{ .name = "tmp101", .driver_data = tmp101, },
+	{ .name = "tmp105", .driver_data = tmp105, },
+	{ .name = "tmp112", .driver_data = tmp112, },
+	{ .name = "tmp175", .driver_data = tmp175, },
+	{ .name = "tmp275", .driver_data = tmp275, },
+	{ .name = "tmp75", .driver_data = tmp75, },
+	{ .name = "tmp75c", .driver_data = tmp75c, },
+	{ /* LIST END */ }
+};
+
+static struct driver_d lm75_driver = {
+	.name  = "lm75",
+	.probe = lm75_probe,
+	.id_table = lm75_ids,
+};
+
+static int lm75_init(void)
+{
+	i2c_driver_register(&lm75_driver);
+	return 0;
+}
+
+device_initcall(lm75_init);
\ No newline at end of file
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
