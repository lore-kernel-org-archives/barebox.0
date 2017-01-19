Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUEZV-00038b-P6
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 15:24:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jan 2017 16:23:55 +0100
Message-Id: <20170119152355.2280-6-s.hauer@pengutronix.de>
In-Reply-To: <20170119152355.2280-1-s.hauer@pengutronix.de>
References: <20170119152355.2280-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] regulator: Add pfuze driver
To: Barebox List <barebox@lists.infradead.org>

This is not yet a regulator driver, only the register map is
exported as /dev/pfuze* so the registers can be accessed for
debugging purposes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/Kconfig  |   4 ++
 drivers/regulator/Makefile |   1 +
 drivers/regulator/pfuze.c  | 169 +++++++++++++++++++++++++++++++++++++++++++++
 include/mfd/pfuze.h        |   6 ++
 4 files changed, 180 insertions(+)
 create mode 100644 drivers/regulator/pfuze.c
 create mode 100644 include/mfd/pfuze.h

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 4b4125254..6a6c6d224 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -16,4 +16,8 @@ config REGULATOR_BCM283X
 	depends on ARCH_BCM283X
 	default y
 
+config REGULATOR_PFUZE
+	bool "Freescale PFUZE100/200/3000 regulator driver"
+	depends on I2C
+
 endif
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index a8dd9bd05..ff5daf9a7 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_REGULATOR) += core.o
 obj-$(CONFIG_REGULATOR_FIXED) += fixed.o
 obj-$(CONFIG_REGULATOR_BCM283X) += bcm2835.o
+obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
\ No newline at end of file
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
new file mode 100644
index 000000000..2a5fb715c
--- /dev/null
+++ b/drivers/regulator/pfuze.c
@@ -0,0 +1,169 @@
+/*
+ * Copyright (C) 2017 Sascha Hauer, Pengutronix
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
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <malloc.h>
+#include <of.h>
+#include <regmap.h>
+#include <mfd/pfuze.h>
+
+#include <i2c/i2c.h>
+
+#define DRIVERNAME		"pfuze"
+
+#define MC13XXX_NUMREGS		0x3f
+
+struct pfuze {
+	struct device_d			*dev;
+	struct regmap			*map;
+	struct i2c_client		*client;
+	int				revision;
+};
+
+struct pfuze_devtype {
+	int	(*revision)(struct pfuze*);
+};
+
+#define to_pfuze(a)		container_of(a, struct pfuze, cdev)
+
+static struct pfuze *pfuze_dev;
+
+static void(*pfuze_init_callback)(struct regmap *map);
+
+int pfuze_register_init_callback(void(*callback)(struct regmap *map))
+{
+	if (pfuze_init_callback)
+		return -EBUSY;
+
+	pfuze_init_callback = callback;
+
+	if (pfuze_dev)
+		pfuze_init_callback(pfuze_dev->map);
+
+	return 0;
+}
+
+static int pfuze_i2c_reg_read(void *ctx, unsigned int reg, unsigned int *val)
+{
+	struct pfuze *pfuze = ctx;
+	u8 buf[1];
+	int ret;
+
+	ret = i2c_read_reg(pfuze->client, reg, buf, 1);
+	*val = buf[0];
+
+	return ret == 1 ? 0 : ret;
+}
+
+static int pfuze_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
+{
+	struct pfuze *pfuze = ctx;
+	u8 buf[] = {
+		val & 0xff,
+	};
+	int ret;
+
+	ret = i2c_write_reg(pfuze->client, reg, buf, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+
+static struct regmap_bus regmap_pfuze_i2c_bus = {
+	.reg_write = pfuze_i2c_reg_write,
+	.reg_read = pfuze_i2c_reg_read,
+};
+
+static const struct regmap_config pfuze_regmap_i2c_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 127,
+};
+
+static int __init pfuze_probe(struct device_d *dev)
+{
+	struct pfuze_devtype *devtype;
+	int ret;
+
+	if (pfuze_dev)
+		return -EBUSY;
+
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
+	if (ret)
+		return ret;
+
+	pfuze_dev = xzalloc(sizeof(*pfuze_dev));
+	pfuze_dev->dev = dev;
+
+	pfuze_dev->client = to_i2c_client(dev);
+	pfuze_dev->map = regmap_init(dev, &regmap_pfuze_i2c_bus,
+				     pfuze_dev, &pfuze_regmap_i2c_config);
+
+	ret = regmap_register_cdev(pfuze_dev->map, NULL);
+	if (ret)
+		return ret;
+
+	if (pfuze_init_callback)
+		pfuze_init_callback(pfuze_dev->map);
+
+	return 0;
+}
+
+static struct pfuze_devtype pfuze100_devtype = {
+};
+
+static struct pfuze_devtype pfuze200_devtype = {
+};
+
+static struct pfuze_devtype pfuze3000_devtype = {
+};
+
+static struct platform_device_id pfuze_ids[] = {
+	{ .name = "pfuze100", .driver_data = (ulong)&pfuze100_devtype, },
+	{ .name = "pfuze200", .driver_data = (ulong)&pfuze200_devtype, },
+	{ .name = "pfuze3000", .driver_data = (ulong)&pfuze3000_devtype, },
+	{ }
+};
+
+static __maybe_unused struct of_device_id pfuze_dt_ids[] = {
+	{ .compatible = "fsl,pfuze100", .data = &pfuze100_devtype, },
+	{ .compatible = "fsl,pfuze200", .data = &pfuze200_devtype, },
+	{ .compatible = "fsl,pfuze3000", .data = &pfuze3000_devtype, },
+	{ }
+};
+
+static struct driver_d pfuze_i2c_driver = {
+	.name		= "pfuze-i2c",
+	.probe		= pfuze_probe,
+	.id_table	= pfuze_ids,
+	.of_compatible	= DRV_OF_COMPAT(pfuze_dt_ids),
+};
+
+static int __init pfuze_init(void)
+{
+	int ret;
+
+	ret = i2c_driver_register(&pfuze_i2c_driver);
+	if (ret)
+		return ret;
+
+	return 0;
+
+}
+late_initcall(pfuze_init);
diff --git a/include/mfd/pfuze.h b/include/mfd/pfuze.h
new file mode 100644
index 000000000..6045ceec0
--- /dev/null
+++ b/include/mfd/pfuze.h
@@ -0,0 +1,6 @@
+#ifndef __INCLUDE_PFUZE_H
+#define __INCLUDE_PFUZE_H
+
+int pfuze_register_init_callback(void(*callback)(struct regmap *map));
+
+#endif /* __INCLUDE_PFUZE_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
