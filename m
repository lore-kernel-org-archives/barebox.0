Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0AV-0004IE-LT
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:20:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:20:09 +0100
Message-Id: <1454516411-22858-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
References: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] Add initial regmap support
To: Barebox List <barebox@lists.infradead.org>

This adds initial regmap support. Function prototypes are from
the Kernel, the implemention is mostly rewritten. Currently the
regmap support is limited to the bare minimum to get started.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/Makefile          |   1 +
 drivers/base/regmap/Makefile   |   1 +
 drivers/base/regmap/internal.h |  18 ++
 drivers/base/regmap/regmap.c   | 398 +++++++++++++++++++++++++++++++++++++++++
 include/regmap.h               |  62 +++++++
 5 files changed, 480 insertions(+)
 create mode 100644 drivers/base/regmap/Makefile
 create mode 100644 drivers/base/regmap/internal.h
 create mode 100644 drivers/base/regmap/regmap.c
 create mode 100644 include/regmap.h

diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index e1f1c7a..4bd4217 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -2,3 +2,4 @@ obj-y	+= bus.o
 obj-y	+= driver.o
 obj-y	+= platform.o
 obj-y	+= resource.o
+obj-y	+= regmap/
\ No newline at end of file
diff --git a/drivers/base/regmap/Makefile b/drivers/base/regmap/Makefile
new file mode 100644
index 0000000..4dc3d8c
--- /dev/null
+++ b/drivers/base/regmap/Makefile
@@ -0,0 +1 @@
+obj-y	+= regmap.o
\ No newline at end of file
diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
new file mode 100644
index 0000000..52df529
--- /dev/null
+++ b/drivers/base/regmap/internal.h
@@ -0,0 +1,18 @@
+
+#include <linux/list.h>
+
+struct regmap {
+	struct device_d *dev;
+	const struct regmap_bus *bus;
+	const char *name;
+	void *bus_context;
+	struct list_head list;
+	int reg_bits;
+	int reg_stride;
+	int pad_bits;
+	int val_bits;
+	int val_bytes;
+	unsigned int max_register;
+
+	struct cdev cdev;
+};
\ No newline at end of file
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
new file mode 100644
index 0000000..b626f9a
--- /dev/null
+++ b/drivers/base/regmap/regmap.c
@@ -0,0 +1,398 @@
+/*
+ * Register map access API
+ *
+ * Copyright 2016 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * based on Kernel code:
+ *
+ * Copyright 2011 Wolfson Microelectronics plc
+ *
+ * Author: Mark Brown <broonie@opensource.wolfsonmicro.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <regmap.h>
+#include <malloc.h>
+#include <linux/log2.h>
+
+#include "internal.h"
+
+static LIST_HEAD(regmaps);
+
+/*
+ * regmap_init - initialize and register a regmap
+ *
+ * @dev:         The device the new regmap belongs to
+ * @bus:         The regmap_bus providing read/write access to the map
+ * @bus_context: Context pointer for the bus ops
+ * @config:      Configuration options for this map
+ *
+ * Returns a pointer to the new map or a ERR_PTR value on failure
+ */
+struct regmap *regmap_init(struct device_d *dev,
+			     const struct regmap_bus *bus,
+			     void *bus_context,
+			     const struct regmap_config *config)
+{
+	struct regmap *map;
+
+	map = xzalloc(sizeof(*map));
+	map->dev = dev;
+	map->bus = bus;
+	map->name = config->name;
+	map->bus_context = bus_context;
+	map->reg_bits = config->reg_bits;
+	map->reg_stride = config->reg_stride;
+	if (!map->reg_stride)
+		map->reg_stride = 1;
+	map->pad_bits = config->pad_bits;
+	map->val_bits = config->val_bits;
+	map->val_bytes = DIV_ROUND_UP(config->val_bits, 8);
+	map->max_register = config->max_register;
+
+	list_add_tail(&map->list, &regmaps);
+
+	return map;
+}
+
+/*
+ * regmap_init - initialize and register a regmap
+ *
+ * @dev:         The device the maps is attached to
+ * @name:        Optional name for the map. If given it must match.
+ *
+ * Returns a pointer to the regmap or a ERR_PTR value on failure
+ */
+struct regmap *dev_get_regmap(struct device_d *dev, const char *name)
+{
+	struct regmap *map;
+
+	list_for_each_entry(map, &regmaps, list) {
+		if (map->dev != dev)
+			continue;
+		if (!name)
+			return map;
+		if (!strcmp(map->name, name))
+			return map;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
+/*
+ * of_node_to_regmap - get a regmap from a device node
+ *
+ * node:         The device node
+ *
+ * Returns a pointer to the regmap or a ERR_PTR if the node has no
+ * regmap attached.
+ */
+struct regmap *of_node_to_regmap(struct device_node *node)
+{
+	struct regmap *map;
+
+	list_for_each_entry(map, &regmaps, list) {
+		if (map->dev->device_node == node)
+			return map;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
+/*
+ * regmap_write - write a register in a map
+ *
+ * @map:	The map
+ * @reg:	The register offset of the register
+ * @val:	The value to be written
+ *
+ * Returns 0 for success or negative error code on failure
+ */
+int regmap_write(struct regmap *map, unsigned int reg, unsigned int val)
+{
+	return map->bus->reg_write(map->bus_context, reg, val);
+}
+
+/*
+ * regmap_write - read a register from a map
+ *
+ * @map:	The map
+ * @reg:	The register offset of the register
+ * @val:	pointer to value read
+ *
+ * Returns 0 for success or negative error code on failure
+ */
+int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
+{
+	return map->bus->reg_read(map->bus_context, reg, val);
+}
+
+/**
+ * regmap_bulk_read(): Read data from the device
+ *
+ * @map: Register map to read from
+ * @reg: First register to be read from
+ * @val: Pointer to store read value
+ * @val_len: Size of data to read
+ *
+ * A value of zero will be returned on success, a negative errno will
+ * be returned in error cases.
+ */
+int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
+		     size_t val_len)
+{
+	size_t val_bytes = map->val_bytes;
+	size_t val_count = val_len / val_bytes;
+	unsigned int v;
+	int ret, i;
+
+	if (val_len % val_bytes)
+		return -EINVAL;
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
+	if (val_count == 0)
+		return -EINVAL;
+
+	for (i = 0; i < val_count; i++) {
+		u32 *u32 = val;
+		u16 *u16 = val;
+		u8 *u8 = val;
+
+		ret = regmap_read(map, reg + (i * map->reg_stride), &v);
+		if (ret != 0)
+			goto out;
+
+		switch (map->val_bytes) {
+		case 4:
+			u32[i] = v;
+			break;
+		case 2:
+			u16[i] = v;
+			break;
+		case 1:
+			u8[i] = v;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+ out:
+	return ret;
+}
+
+/**
+ * regmap_bulk_write(): Write values to one or more registers
+ *
+ * @map: Register map to write to
+ * @reg: Initial register to write to
+ * @val: Block of data to be written, laid out for direct transmission to the
+ *       device
+ * @val_len: Length of data pointed to by val.
+ *
+ * A value of zero will be returned on success, a negative errno will
+ * be returned in error cases.
+ */
+int regmap_bulk_write(struct regmap *map, unsigned int reg,
+		     const void *val, size_t val_len)
+{
+	size_t val_bytes = map->val_bytes;
+	size_t val_count = val_len / val_bytes;
+	int ret, i;
+
+	if (val_len % val_bytes)
+		return -EINVAL;
+	if (!IS_ALIGNED(reg, map->reg_stride))
+		return -EINVAL;
+	if (val_count == 0)
+		return -EINVAL;
+
+	for (i = 0; i < val_count; i++) {
+		unsigned int ival;
+
+		switch (val_bytes) {
+		case 1:
+			ival = *(u8 *)(val + (i * val_bytes));
+			break;
+		case 2:
+			ival = *(u16 *)(val + (i * val_bytes));
+			break;
+		case 4:
+			ival = *(u32 *)(val + (i * val_bytes));
+			break;
+		default:
+			ret = -EINVAL;
+			goto out;
+		}
+
+		ret = regmap_write(map, reg + (i * map->reg_stride),
+				ival);
+		if (ret != 0)
+			goto out;
+	}
+
+ out:
+	return ret;
+}
+
+int regmap_get_val_bytes(struct regmap *map)
+{
+	return map->val_bytes;
+}
+
+int regmap_get_max_register(struct regmap *map)
+{
+	return map->max_register;
+}
+
+int regmap_get_reg_stride(struct regmap *map)
+{
+	return map->reg_stride;
+}
+
+static int regmap_round_val_bytes(struct regmap *map)
+{
+	int val_bytes;
+
+	val_bytes = roundup_pow_of_two(map->val_bits) >> 3;
+	if (!val_bytes)
+		val_bytes = 1;
+
+	return val_bytes;
+}
+
+static ssize_t regmap_cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
+		       unsigned long flags)
+{
+	struct regmap *map = container_of(cdev, struct regmap, cdev);
+	int val_bytes = regmap_round_val_bytes(map);
+	int n = count;
+	int err;
+	unsigned int ofs = offset;
+
+	if (n < val_bytes || ofs & (val_bytes - 1))
+		return -EINVAL;
+
+	ofs /= val_bytes;
+	ofs *= map->reg_stride;
+
+	while (n > 0) {
+		err = regmap_read(map, ofs, buf);
+		if (err)
+			return (ssize_t)err;
+		buf += val_bytes;
+		n -= val_bytes;
+		ofs += map->reg_stride;
+	}
+
+	return count;
+}
+
+static ssize_t regmap_cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset,
+			unsigned long flags)
+{
+	struct regmap *map = container_of(cdev, struct regmap, cdev);
+	int val_bytes = regmap_round_val_bytes(map);
+	int n = count;
+	int err;
+	unsigned int ofs = offset;
+
+	if (n < val_bytes || ofs & (val_bytes - 1))
+		return -EINVAL;
+
+	ofs /= val_bytes;
+	ofs *= map->reg_stride;
+
+	while (n > 0) {
+		u32 val;
+
+		switch (val_bytes) {
+		case 1:
+			val = *(u8 *)buf;
+			break;
+		case 2:
+			val = *(u16 *)buf;
+			break;
+		case 4:
+			val = *(u32 *)buf;
+			break;
+		default:
+			return -EINVAL;
+		};
+
+		err = regmap_write(map, ofs, val);
+		if (err)
+			return (ssize_t)err;
+		buf += val_bytes;
+		n -= val_bytes;
+		ofs += map->reg_stride;
+	}
+
+	return count;
+}
+
+static struct file_operations regmap_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= regmap_cdev_read,
+	.write	= regmap_cdev_write,
+};
+
+/*
+ * regmap_register_cdev - register a devfs file for a regmap
+ *
+ * @map:	The map
+ * @name:	Optional name of the device file
+ *
+ * Returns 0 for success or negative error code on failure
+ */
+int regmap_register_cdev(struct regmap *map, const char *name)
+{
+	int ret;
+
+	if (map->cdev.name)
+		return -EBUSY;
+
+	if (!map->max_register)
+		return -EINVAL;
+
+	if (name) {
+		map->cdev.name = xstrdup(name);
+	} else {
+		if (map->name)
+			map->cdev.name = xasprintf("%s-%s", dev_name(map->dev), map->name);
+		else
+			map->cdev.name = xstrdup(dev_name(map->dev));
+	}
+
+	map->cdev.size = regmap_round_val_bytes(map) * (map->max_register + 1) /
+			map->reg_stride;
+	map->cdev.dev = map->dev;
+	map->cdev.ops = &regmap_fops;
+
+	ret = devfs_create(&map->cdev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+void regmap_exit(struct regmap *map)
+{
+	list_del(&map->list);
+
+	if (map->cdev.name) {
+		devfs_remove(&map->cdev);
+		free(map->cdev.name);
+	}
+
+	free(map);
+}
\ No newline at end of file
diff --git a/include/regmap.h b/include/regmap.h
new file mode 100644
index 0000000..4cb473c
--- /dev/null
+++ b/include/regmap.h
@@ -0,0 +1,62 @@
+#ifndef __REGMAP_H
+#define __REGMAP_H
+
+/**
+ * Configuration for the register map of a device.
+ *
+ * @name: Optional name of the regmap. Useful when a device has multiple
+ *        register regions.
+ *
+ * @reg_bits: Number of bits in a register address, mandatory.
+ * @reg_stride: The register address stride. Valid register addresses are a
+ *              multiple of this value. If set to 0, a value of 1 will be
+ *              used.
+ * @pad_bits: Number of bits of padding between register and value.
+ * @val_bits: Number of bits in a register value, mandatory.
+ *
+ * @max_register: Optional, specifies the maximum valid register index.
+ */
+struct regmap_config {
+	const char *name;
+
+	int reg_bits;
+	int reg_stride;
+	int pad_bits;
+	int val_bits;
+
+	unsigned int max_register;
+};
+
+typedef int (*regmap_hw_reg_read)(void *context, unsigned int reg,
+				  unsigned int *val);
+typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
+				   unsigned int val);
+
+struct regmap_bus {
+	regmap_hw_reg_write reg_write;
+	regmap_hw_reg_read reg_read;
+};
+
+struct regmap *regmap_init(struct device_d *dev,
+			     const struct regmap_bus *bus,
+			     void *bus_context,
+			     const struct regmap_config *config);
+
+struct regmap *dev_get_regmap(struct device_d *dev, const char *name);
+struct regmap *of_node_to_regmap(struct device_node *node);
+
+int regmap_register_cdev(struct regmap *map, const char *name);
+
+int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
+int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val);
+
+int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
+		    size_t val_len);
+int regmap_bulk_write(struct regmap *map, unsigned int reg,
+		     const void *val, size_t val_len);
+
+int regmap_get_val_bytes(struct regmap *map);
+int regmap_get_max_register(struct regmap *map);
+int regmap_get_reg_stride(struct regmap *map);
+
+#endif /* __REGMAP_H */
\ No newline at end of file
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
