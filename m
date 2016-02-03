Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0HE-0000A3-P1
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:27:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:27:09 +0100
Message-Id: <1454516830-26387-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454516830-26387-1-git-send-email-s.hauer@pengutronix.de>
References: <1454516830-26387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] drivers: add nvmem framework from kernel
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add the nvmem framework from Linux.

Based on the v4.4-rc3 version.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/Kconfig                |   1 +
 drivers/Makefile               |   1 +
 drivers/nvmem/Kconfig          |   8 +
 drivers/nvmem/Makefile         |   6 +
 drivers/nvmem/core.c           | 749 +++++++++++++++++++++++++++++++++++++++++
 include/linux/nvmem-consumer.h | 157 +++++++++
 include/linux/nvmem-provider.h |  49 +++
 7 files changed, 971 insertions(+)
 create mode 100644 drivers/nvmem/Kconfig
 create mode 100644 drivers/nvmem/Makefile
 create mode 100644 drivers/nvmem/core.c
 create mode 100644 include/linux/nvmem-consumer.h
 create mode 100644 include/linux/nvmem-provider.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 5984ccc..3b2ea4d 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -31,5 +31,6 @@ source "drivers/pci/Kconfig"
 source "drivers/rtc/Kconfig"
 source "drivers/firmware/Kconfig"
 source "drivers/phy/Kconfig"
+source "drivers/nvmem/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 3afbb61..3d7f328 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -31,3 +31,4 @@ obj-y += rtc/
 obj-$(CONFIG_FIRMWARE) += firmware/
 obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HABV4) += habv4/
+obj-$(CONFIG_NVMEM) += nvmem/
diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
new file mode 100644
index 0000000..218be05
--- /dev/null
+++ b/drivers/nvmem/Kconfig
@@ -0,0 +1,8 @@
+menuconfig NVMEM
+	bool "NVMEM Support"
+	help
+	  Support for NVMEM(Non Volatile Memory) devices like EEPROM, EFUSES...
+
+	  This framework is designed to provide a generic interface to NVMEM
+
+	  If unsure, say no.
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
new file mode 100644
index 0000000..6df2c69
--- /dev/null
+++ b/drivers/nvmem/Makefile
@@ -0,0 +1,6 @@
+#
+# Makefile for nvmem drivers.
+#
+
+obj-$(CONFIG_NVMEM)		+= nvmem_core.o
+nvmem_core-y			:= core.o
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
new file mode 100644
index 0000000..0214253
--- /dev/null
+++ b/drivers/nvmem/core.c
@@ -0,0 +1,749 @@
+/*
+ * nvmem framework core.
+ *
+ * Copyright (C) 2015 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+ * Copyright (C) 2013 Maxime Ripard <maxime.ripard@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 and
+ * only version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#define DEBUG
+#include <common.h>
+#include <libbb.h>
+#include <malloc.h>
+#include <of.h>
+#include <regmap.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/nvmem-provider.h>
+
+struct nvmem_device {
+	const char		*name;
+	struct device_d		dev;
+	struct nvmem_bus	*bus;
+	struct list_head	node;
+	int			stride;
+	int			word_size;
+	int			ncells;
+	int			users;
+	size_t			size;
+	bool			read_only;
+	struct regmap		*regmap;
+};
+
+struct nvmem_cell {
+	const char		*name;
+	int			offset;
+	int			bytes;
+	int			bit_offset;
+	int			nbits;
+	struct nvmem_device	*nvmem;
+	struct list_head	node;
+};
+
+static LIST_HEAD(nvmem_cells);
+static LIST_HEAD(nvmem_devs);
+
+static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
+{
+	struct nvmem_device *dev;
+
+	if (!nvmem_np)
+		return NULL;
+
+	list_for_each_entry(dev, &nvmem_devs, node)
+		if (dev->dev.device_node->name && !strcmp(dev->dev.device_node->name, nvmem_np->name))
+			return dev;
+
+	return NULL;
+}
+
+static struct nvmem_cell *nvmem_find_cell(const char *cell_id)
+{
+	struct nvmem_cell *p;
+
+	list_for_each_entry(p, &nvmem_cells, node)
+		if (p && !strcmp(p->name, cell_id))
+			return p;
+
+	return NULL;
+}
+
+static void nvmem_cell_drop(struct nvmem_cell *cell)
+{
+	list_del(&cell->node);
+	kfree(cell);
+}
+
+static void nvmem_device_remove_all_cells(const struct nvmem_device *nvmem)
+{
+	struct nvmem_cell *cell;
+	struct list_head *p, *n;
+
+	list_for_each_safe(p, n, &nvmem_cells) {
+		cell = list_entry(p, struct nvmem_cell, node);
+		if (cell->nvmem == nvmem)
+			nvmem_cell_drop(cell);
+	}
+}
+
+static void nvmem_cell_add(struct nvmem_cell *cell)
+{
+	list_add_tail(&cell->node, &nvmem_cells);
+}
+
+static int nvmem_cell_info_to_nvmem_cell(struct nvmem_device *nvmem,
+				   const struct nvmem_cell_info *info,
+				   struct nvmem_cell *cell)
+{
+	cell->nvmem = nvmem;
+	cell->offset = info->offset;
+	cell->bytes = info->bytes;
+	cell->name = info->name;
+
+	cell->bit_offset = info->bit_offset;
+	cell->nbits = info->nbits;
+
+	if (cell->nbits)
+		cell->bytes = DIV_ROUND_UP(cell->nbits + cell->bit_offset,
+					   BITS_PER_BYTE);
+
+	if (!IS_ALIGNED(cell->offset, nvmem->stride)) {
+		dev_err(&nvmem->dev,
+			"cell %s unaligned to nvmem stride %d\n",
+			cell->name, nvmem->stride);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int nvmem_add_cells(struct nvmem_device *nvmem,
+			   const struct nvmem_config *cfg)
+{
+	struct nvmem_cell **cells;
+	const struct nvmem_cell_info *info = cfg->cells;
+	int i, rval;
+
+	cells = kzalloc(sizeof(*cells)*cfg->ncells, GFP_KERNEL);
+	if (!cells)
+		return -ENOMEM;
+
+	for (i = 0; i < cfg->ncells; i++) {
+		cells[i] = kzalloc(sizeof(**cells), GFP_KERNEL);
+		if (!cells[i]) {
+			rval = -ENOMEM;
+			goto err;
+		}
+
+		rval = nvmem_cell_info_to_nvmem_cell(nvmem, &info[i], cells[i]);
+		if (IS_ERR_VALUE(rval)) {
+			kfree(cells[i]);
+			goto err;
+		}
+
+		nvmem_cell_add(cells[i]);
+	}
+
+	nvmem->ncells = cfg->ncells;
+	/* remove tmp array */
+	kfree(cells);
+
+	return 0;
+err:
+	while (--i)
+		nvmem_cell_drop(cells[i]);
+
+	return rval;
+}
+
+/**
+ * nvmem_register() - Register a nvmem device for given nvmem_config.
+ *
+ * @config: nvmem device configuration with which nvmem device is created.
+ *
+ * Return: Will be an ERR_PTR() on error or a valid pointer to nvmem_device
+ * on success.
+ */
+
+struct nvmem_device *nvmem_register(const struct nvmem_config *config, struct regmap *map)
+{
+	struct nvmem_device *nvmem;
+	struct device_node *np;
+	int rval;
+
+	if (!config->dev)
+		return ERR_PTR(-EINVAL);
+
+	nvmem = kzalloc(sizeof(*nvmem), GFP_KERNEL);
+	if (!nvmem)
+		return ERR_PTR(-ENOMEM);
+
+	nvmem->stride = regmap_get_reg_stride(map);
+	nvmem->word_size = regmap_get_val_bytes(map);
+	nvmem->size = regmap_get_max_register(map) + nvmem->stride;
+	nvmem->dev.parent = config->dev;
+	nvmem->regmap = map;
+	np = config->dev->device_node;
+	nvmem->dev.device_node = np;
+
+	nvmem->read_only = of_property_read_bool(np, "read-only") |
+			   config->read_only;
+
+	safe_strncpy(nvmem->dev.name, config->name, MAX_DRIVER_NAME);
+	nvmem->dev.id = DEVICE_ID_DYNAMIC;
+
+	dev_dbg(&nvmem->dev, "Registering nvmem device %s\n", config->name);
+
+	rval = register_device(&nvmem->dev);
+	if (rval) {
+		kfree(nvmem);
+		return ERR_PTR(rval);
+	}
+
+	list_add_tail(&nvmem->node, &nvmem_devs);
+
+	if (config->cells)
+		nvmem_add_cells(nvmem, config);
+
+	return nvmem;
+}
+EXPORT_SYMBOL_GPL(nvmem_register);
+
+/**
+ * nvmem_unregister() - Unregister previously registered nvmem device
+ *
+ * @nvmem: Pointer to previously registered nvmem device.
+ *
+ * Return: Will be an negative on error or a zero on success.
+ */
+int nvmem_unregister(struct nvmem_device *nvmem)
+{
+	if (nvmem->users)
+		return -EBUSY;
+
+	nvmem_device_remove_all_cells(nvmem);
+	unregister_device(&nvmem->dev);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvmem_unregister);
+
+static struct nvmem_device *__nvmem_device_get(struct device_node *np,
+					       struct nvmem_cell **cellp,
+					       const char *cell_id)
+{
+	struct nvmem_device *nvmem = NULL;
+
+	if (np) {
+		nvmem = of_nvmem_find(np);
+		if (!nvmem)
+			return ERR_PTR(-EPROBE_DEFER);
+	} else {
+		struct nvmem_cell *cell = nvmem_find_cell(cell_id);
+
+		if (cell) {
+			nvmem = cell->nvmem;
+			*cellp = cell;
+		}
+
+		if (!nvmem)
+			return ERR_PTR(-ENOENT);
+	}
+
+	nvmem->users++;
+
+	return nvmem;
+}
+
+static void __nvmem_device_put(struct nvmem_device *nvmem)
+{
+	nvmem->users--;
+}
+
+#if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
+/**
+ * of_nvmem_device_get() - Get nvmem device from a given id
+ *
+ * @dev node: Device tree node that uses the nvmem device
+ * @id: nvmem name from nvmem-names property.
+ *
+ * Return: ERR_PTR() on error or a valid pointer to a struct nvmem_device
+ * on success.
+ */
+struct nvmem_device *of_nvmem_device_get(struct device_node *np, const char *id)
+{
+
+	struct device_node *nvmem_np;
+	int index;
+
+	index = of_property_match_string(np, "nvmem-names", id);
+
+	nvmem_np = of_parse_phandle(np, "nvmem", index);
+	if (!nvmem_np)
+		return ERR_PTR(-EINVAL);
+
+	return __nvmem_device_get(nvmem_np, NULL, NULL);
+}
+EXPORT_SYMBOL_GPL(of_nvmem_device_get);
+#endif
+
+/**
+ * nvmem_device_get() - Get nvmem device from a given id
+ *
+ * @dev : Device that uses the nvmem device
+ * @id: nvmem name from nvmem-names property.
+ *
+ * Return: ERR_PTR() on error or a valid pointer to a struct nvmem_device
+ * on success.
+ */
+struct nvmem_device *nvmem_device_get(struct device_d *dev, const char *dev_name)
+{
+	if (dev->device_node) { /* try dt first */
+		struct nvmem_device *nvmem;
+
+		nvmem = of_nvmem_device_get(dev->device_node, dev_name);
+
+		if (!IS_ERR(nvmem) || PTR_ERR(nvmem) == -EPROBE_DEFER)
+			return nvmem;
+
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+EXPORT_SYMBOL_GPL(nvmem_device_get);
+
+/**
+ * nvmem_device_put() - put alredy got nvmem device
+ *
+ * @nvmem: pointer to nvmem device that needs to be released.
+ */
+void nvmem_device_put(struct nvmem_device *nvmem)
+{
+	__nvmem_device_put(nvmem);
+}
+EXPORT_SYMBOL_GPL(nvmem_device_put);
+
+static struct nvmem_cell *nvmem_cell_get_from_list(const char *cell_id)
+{
+	struct nvmem_cell *cell = NULL;
+	struct nvmem_device *nvmem;
+
+	nvmem = __nvmem_device_get(NULL, &cell, cell_id);
+	if (IS_ERR(nvmem))
+		return ERR_CAST(nvmem);
+
+	return cell;
+}
+
+#if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
+/**
+ * of_nvmem_cell_get() - Get a nvmem cell from given device node and cell id
+ *
+ * @dev node: Device tree node that uses the nvmem cell
+ * @id: nvmem cell name from nvmem-cell-names property.
+ *
+ * Return: Will be an ERR_PTR() on error or a valid pointer
+ * to a struct nvmem_cell.  The nvmem_cell will be freed by the
+ * nvmem_cell_put().
+ */
+struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
+					    const char *name)
+{
+	struct device_node *cell_np, *nvmem_np;
+	struct nvmem_cell *cell;
+	struct nvmem_device *nvmem;
+	const __be32 *addr;
+	int rval, len, index;
+
+	index = of_property_match_string(np, "nvmem-cell-names", name);
+	if (index < 0)
+		return ERR_PTR(index);
+
+	cell_np = of_parse_phandle(np, "nvmem-cells", index);
+	if (!cell_np)
+		return ERR_PTR(-EINVAL);
+
+	nvmem_np = of_get_parent(cell_np);
+	if (!nvmem_np)
+		return ERR_PTR(-EINVAL);
+
+	nvmem = __nvmem_device_get(nvmem_np, NULL, NULL);
+	if (IS_ERR(nvmem))
+		return ERR_CAST(nvmem);
+
+	addr = of_get_property(cell_np, "reg", &len);
+	if (!addr || (len < 2 * sizeof(u32))) {
+		dev_err(&nvmem->dev, "nvmem: invalid reg on %s\n",
+			cell_np->full_name);
+		rval  = -EINVAL;
+		goto err_mem;
+	}
+
+	cell = kzalloc(sizeof(*cell), GFP_KERNEL);
+	if (!cell) {
+		rval = -ENOMEM;
+		goto err_mem;
+	}
+
+	cell->nvmem = nvmem;
+	cell->offset = be32_to_cpup(addr++);
+	cell->bytes = be32_to_cpup(addr);
+	cell->name = cell_np->name;
+
+	addr = of_get_property(cell_np, "bits", &len);
+	if (addr && len == (2 * sizeof(u32))) {
+		cell->bit_offset = be32_to_cpup(addr++);
+		cell->nbits = be32_to_cpup(addr);
+	}
+
+	if (cell->nbits)
+		cell->bytes = DIV_ROUND_UP(cell->nbits + cell->bit_offset,
+					   BITS_PER_BYTE);
+
+	if (cell->bytes < nvmem->word_size)
+		cell->bytes = nvmem->word_size;
+
+	if (!IS_ALIGNED(cell->offset, nvmem->stride)) {
+			dev_err(&nvmem->dev,
+				"cell %s unaligned to nvmem stride %d\n",
+				cell->name, nvmem->stride);
+		rval  = -EINVAL;
+		goto err_sanity;
+	}
+
+	nvmem_cell_add(cell);
+
+	return cell;
+
+err_sanity:
+	kfree(cell);
+
+err_mem:
+	__nvmem_device_put(nvmem);
+
+	return ERR_PTR(rval);
+}
+EXPORT_SYMBOL_GPL(of_nvmem_cell_get);
+#endif
+
+/**
+ * nvmem_cell_get() - Get nvmem cell of device form a given cell name
+ *
+ * @dev node: Device tree node that uses the nvmem cell
+ * @id: nvmem cell name to get.
+ *
+ * Return: Will be an ERR_PTR() on error or a valid pointer
+ * to a struct nvmem_cell.  The nvmem_cell will be freed by the
+ * nvmem_cell_put().
+ */
+struct nvmem_cell *nvmem_cell_get(struct device_d *dev, const char *cell_id)
+{
+	struct nvmem_cell *cell;
+
+	if (dev->device_node) { /* try dt first */
+		cell = of_nvmem_cell_get(dev->device_node, cell_id);
+		if (!IS_ERR(cell) || PTR_ERR(cell) == -EPROBE_DEFER)
+			return cell;
+	}
+
+	return nvmem_cell_get_from_list(cell_id);
+}
+EXPORT_SYMBOL_GPL(nvmem_cell_get);
+
+/**
+ * nvmem_cell_put() - Release previously allocated nvmem cell.
+ *
+ * @cell: Previously allocated nvmem cell by nvmem_cell_get()
+ */
+void nvmem_cell_put(struct nvmem_cell *cell)
+{
+	struct nvmem_device *nvmem = cell->nvmem;
+
+	__nvmem_device_put(nvmem);
+	nvmem_cell_drop(cell);
+}
+EXPORT_SYMBOL_GPL(nvmem_cell_put);
+
+static inline void nvmem_shift_read_buffer_in_place(struct nvmem_cell *cell,
+						    void *buf)
+{
+	u8 *p, *b;
+	int i, bit_offset = cell->bit_offset;
+
+	p = b = buf;
+	if (bit_offset) {
+		/* First shift */
+		*b++ >>= bit_offset;
+
+		/* setup rest of the bytes if any */
+		for (i = 1; i < cell->bytes; i++) {
+			/* Get bits from next byte and shift them towards msb */
+			*p |= *b << (BITS_PER_BYTE - bit_offset);
+
+			p = b;
+			*b++ >>= bit_offset;
+		}
+
+		/* result fits in less bytes */
+		if (cell->bytes != DIV_ROUND_UP(cell->nbits, BITS_PER_BYTE))
+			*p-- = 0;
+	}
+	/* clear msb bits if any leftover in the last byte */
+	*p &= GENMASK((cell->nbits%BITS_PER_BYTE) - 1, 0);
+}
+
+static int __nvmem_cell_read(struct nvmem_device *nvmem,
+		      struct nvmem_cell *cell,
+		      void *buf, size_t *len)
+{
+	int rc;
+
+	rc = regmap_bulk_read(nvmem->regmap, cell->offset, buf, cell->bytes);
+	if (IS_ERR_VALUE(rc))
+		return rc;
+
+	/* shift bits in-place */
+	if (cell->bit_offset || cell->nbits)
+		nvmem_shift_read_buffer_in_place(cell, buf);
+
+	*len = cell->bytes;
+
+	return 0;
+}
+
+/**
+ * nvmem_cell_read() - Read a given nvmem cell
+ *
+ * @cell: nvmem cell to be read.
+ * @len: pointer to length of cell which will be populated on successful read.
+ *
+ * Return: ERR_PTR() on error or a valid pointer to a char * buffer on success.
+ * The buffer should be freed by the consumer with a kfree().
+ */
+void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
+{
+	struct nvmem_device *nvmem = cell->nvmem;
+	u8 *buf;
+	int rc;
+
+	if (!nvmem)
+		return ERR_PTR(-EINVAL);
+
+	buf = kzalloc(cell->bytes, GFP_KERNEL);
+	if (!buf)
+		return ERR_PTR(-ENOMEM);
+
+	rc = __nvmem_cell_read(nvmem, cell, buf, len);
+	if (IS_ERR_VALUE(rc)) {
+		kfree(buf);
+		return ERR_PTR(rc);
+	}
+
+	return buf;
+}
+EXPORT_SYMBOL_GPL(nvmem_cell_read);
+
+static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
+						    u8 *_buf, int len)
+{
+	struct nvmem_device *nvmem = cell->nvmem;
+	int i, rc, nbits, bit_offset = cell->bit_offset;
+	u8 v, *p, *buf, *b, pbyte, pbits;
+
+	nbits = cell->nbits;
+	buf = kzalloc(cell->bytes, GFP_KERNEL);
+	if (!buf)
+		return ERR_PTR(-ENOMEM);
+
+	memcpy(buf, _buf, len);
+	p = b = buf;
+
+	if (bit_offset) {
+		pbyte = *b;
+		*b <<= bit_offset;
+
+		/* setup the first byte with lsb bits from nvmem */
+		rc = regmap_bulk_read(nvmem->regmap, cell->offset, &v, 1);
+		*b++ |= GENMASK(bit_offset - 1, 0) & v;
+
+		/* setup rest of the byte if any */
+		for (i = 1; i < cell->bytes; i++) {
+			/* Get last byte bits and shift them towards lsb */
+			pbits = pbyte >> (BITS_PER_BYTE - 1 - bit_offset);
+			pbyte = *b;
+			p = b;
+			*b <<= bit_offset;
+			*b++ |= pbits;
+		}
+	}
+
+	/* if it's not end on byte boundary */
+	if ((nbits + bit_offset) % BITS_PER_BYTE) {
+		/* setup the last byte with msb bits from nvmem */
+		rc = regmap_bulk_read(nvmem->regmap, cell->offset + cell->bytes - 1,
+				      &v, 1);
+		*p |= GENMASK(7, (nbits + bit_offset) % BITS_PER_BYTE) & v;
+
+	}
+
+	return buf;
+}
+
+/**
+ * nvmem_cell_write() - Write to a given nvmem cell
+ *
+ * @cell: nvmem cell to be written.
+ * @buf: Buffer to be written.
+ * @len: length of buffer to be written to nvmem cell.
+ *
+ * Return: length of bytes written or negative on failure.
+ */
+int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
+{
+	struct nvmem_device *nvmem = cell->nvmem;
+	int rc;
+
+	if (!nvmem || nvmem->read_only ||
+	    (cell->bit_offset == 0 && len != cell->bytes))
+		return -EINVAL;
+
+	if (cell->bit_offset || cell->nbits) {
+		buf = nvmem_cell_prepare_write_buffer(cell, buf, len);
+		if (IS_ERR(buf))
+			return PTR_ERR(buf);
+	}
+
+	rc = regmap_bulk_write(nvmem->regmap, cell->offset, buf, cell->bytes);
+
+	/* free the tmp buffer */
+	if (cell->bit_offset || cell->nbits)
+		kfree(buf);
+
+	if (IS_ERR_VALUE(rc))
+		return rc;
+
+	return len;
+}
+EXPORT_SYMBOL_GPL(nvmem_cell_write);
+
+/**
+ * nvmem_device_cell_read() - Read a given nvmem device and cell
+ *
+ * @nvmem: nvmem device to read from.
+ * @info: nvmem cell info to be read.
+ * @buf: buffer pointer which will be populated on successful read.
+ *
+ * Return: length of successful bytes read on success and negative
+ * error code on error.
+ */
+ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
+			   struct nvmem_cell_info *info, void *buf)
+{
+	struct nvmem_cell cell;
+	int rc;
+	ssize_t len;
+
+	if (!nvmem)
+		return -EINVAL;
+
+	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
+	if (IS_ERR_VALUE(rc))
+		return rc;
+
+	rc = __nvmem_cell_read(nvmem, &cell, buf, &len);
+	if (IS_ERR_VALUE(rc))
+		return rc;
+
+	return len;
+}
+EXPORT_SYMBOL_GPL(nvmem_device_cell_read);
+
+/**
+ * nvmem_device_cell_write() - Write cell to a given nvmem device
+ *
+ * @nvmem: nvmem device to be written to.
+ * @info: nvmem cell info to be written
+ * @buf: buffer to be written to cell.
+ *
+ * Return: length of bytes written or negative error code on failure.
+ * */
+int nvmem_device_cell_write(struct nvmem_device *nvmem,
+			    struct nvmem_cell_info *info, void *buf)
+{
+	struct nvmem_cell cell;
+	int rc;
+
+	if (!nvmem)
+		return -EINVAL;
+
+	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
+	if (IS_ERR_VALUE(rc))
+		return rc;
+
+	return nvmem_cell_write(&cell, buf, cell.bytes);
+}
+EXPORT_SYMBOL_GPL(nvmem_device_cell_write);
+
+/**
+ * nvmem_device_read() - Read from a given nvmem device
+ *
+ * @nvmem: nvmem device to read from.
+ * @offset: offset in nvmem device.
+ * @bytes: number of bytes to read.
+ * @buf: buffer pointer which will be populated on successful read.
+ *
+ * Return: length of successful bytes read on success and negative
+ * error code on error.
+ */
+int nvmem_device_read(struct nvmem_device *nvmem,
+		      unsigned int offset,
+		      size_t bytes, void *buf)
+{
+	int rc;
+
+	if (!nvmem)
+		return -EINVAL;
+
+	rc = regmap_bulk_read(nvmem->regmap, offset, buf, bytes);
+
+	if (IS_ERR_VALUE(rc))
+		return rc;
+
+	return bytes;
+}
+EXPORT_SYMBOL_GPL(nvmem_device_read);
+
+/**
+ * nvmem_device_write() - Write cell to a given nvmem device
+ *
+ * @nvmem: nvmem device to be written to.
+ * @offset: offset in nvmem device.
+ * @bytes: number of bytes to write.
+ * @buf: buffer to be written.
+ *
+ * Return: length of bytes written or negative error code on failure.
+ * */
+int nvmem_device_write(struct nvmem_device *nvmem,
+		       unsigned int offset,
+		       size_t bytes, void *buf)
+{
+	int rc;
+
+	if (!nvmem)
+		return -EINVAL;
+
+	rc = regmap_bulk_write(nvmem->regmap, offset, buf, bytes);
+
+	if (IS_ERR_VALUE(rc))
+		return rc;
+
+
+	return bytes;
+}
+EXPORT_SYMBOL_GPL(nvmem_device_write);
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
new file mode 100644
index 0000000..cae6ec7
--- /dev/null
+++ b/include/linux/nvmem-consumer.h
@@ -0,0 +1,157 @@
+/*
+ * nvmem framework consumer.
+ *
+ * Copyright (C) 2015 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+ * Copyright (C) 2013 Maxime Ripard <maxime.ripard@free-electrons.com>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#ifndef _LINUX_NVMEM_CONSUMER_H
+#define _LINUX_NVMEM_CONSUMER_H
+
+struct device_d;
+struct device_node;
+/* consumer cookie */
+struct nvmem_cell;
+struct nvmem_device;
+
+struct nvmem_cell_info {
+	const char		*name;
+	unsigned int		offset;
+	unsigned int		bytes;
+	unsigned int		bit_offset;
+	unsigned int		nbits;
+};
+
+#if IS_ENABLED(CONFIG_NVMEM)
+
+/* Cell based interface */
+struct nvmem_cell *nvmem_cell_get(struct device_d *dev, const char *name);
+struct nvmem_cell *devm_nvmem_cell_get(struct device_d *dev, const char *name);
+void nvmem_cell_put(struct nvmem_cell *cell);
+void devm_nvmem_cell_put(struct device_d *dev, struct nvmem_cell *cell);
+void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len);
+int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
+
+/* direct nvmem device read/write interface */
+struct nvmem_device *nvmem_device_get(struct device_d *dev, const char *name);
+struct nvmem_device *devm_nvmem_device_get(struct device_d *dev,
+					   const char *name);
+void nvmem_device_put(struct nvmem_device *nvmem);
+void devm_nvmem_device_put(struct device_d *dev, struct nvmem_device *nvmem);
+int nvmem_device_read(struct nvmem_device *nvmem, unsigned int offset,
+		      size_t bytes, void *buf);
+int nvmem_device_write(struct nvmem_device *nvmem, unsigned int offset,
+		       size_t bytes, void *buf);
+ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
+			   struct nvmem_cell_info *info, void *buf);
+int nvmem_device_cell_write(struct nvmem_device *nvmem,
+			    struct nvmem_cell_info *info, void *buf);
+
+#else
+
+static inline struct nvmem_cell *nvmem_cell_get(struct device_d *dev,
+						const char *name)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct nvmem_cell *devm_nvmem_cell_get(struct device_d *dev,
+				       const char *name)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline void devm_nvmem_cell_put(struct device_d *dev,
+				       struct nvmem_cell *cell)
+{
+
+}
+static inline void nvmem_cell_put(struct nvmem_cell *cell)
+{
+}
+
+static inline char *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline int nvmem_cell_write(struct nvmem_cell *cell,
+				    const char *buf, size_t len)
+{
+	return -ENOSYS;
+}
+
+static inline struct nvmem_device *nvmem_device_get(struct device_d *dev,
+						    const char *name)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct nvmem_device *devm_nvmem_device_get(struct device_d *dev,
+							 const char *name)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline void nvmem_device_put(struct nvmem_device *nvmem)
+{
+}
+
+static inline void devm_nvmem_device_put(struct device_d *dev,
+					 struct nvmem_device *nvmem)
+{
+}
+
+static inline ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
+					 struct nvmem_cell_info *info,
+					 void *buf)
+{
+	return -ENOSYS;
+}
+
+static inline int nvmem_device_cell_write(struct nvmem_device *nvmem,
+					  struct nvmem_cell_info *info,
+					  void *buf)
+{
+	return -ENOSYS;
+}
+
+static inline int nvmem_device_read(struct nvmem_device *nvmem,
+				    unsigned int offset, size_t bytes,
+				    void *buf)
+{
+	return -ENOSYS;
+}
+
+static inline int nvmem_device_write(struct nvmem_device *nvmem,
+				     unsigned int offset, size_t bytes,
+				     void *buf)
+{
+	return -ENOSYS;
+}
+#endif /* CONFIG_NVMEM */
+
+#if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
+struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
+				     const char *name);
+struct nvmem_device *of_nvmem_device_get(struct device_node *np,
+					 const char *name);
+#else
+static inline struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
+				     const char *name)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct nvmem_device *of_nvmem_device_get(struct device_node *np,
+						       const char *name)
+{
+	return ERR_PTR(-ENOSYS);
+}
+#endif /* CONFIG_NVMEM && CONFIG_OF */
+
+#endif  /* ifndef _LINUX_NVMEM_CONSUMER_H */
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
new file mode 100644
index 0000000..99605a9
--- /dev/null
+++ b/include/linux/nvmem-provider.h
@@ -0,0 +1,49 @@
+/*
+ * nvmem framework provider.
+ *
+ * Copyright (C) 2015 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+ * Copyright (C) 2013 Maxime Ripard <maxime.ripard@free-electrons.com>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#ifndef _LINUX_NVMEM_PROVIDER_H
+#define _LINUX_NVMEM_PROVIDER_H
+
+struct device_d;
+struct nvmem_device;
+struct nvmem_cell_info;
+
+struct nvmem_config {
+	struct device_d		*dev;
+	const char		*name;
+	int			id;
+	const struct nvmem_cell_info	*cells;
+	int			ncells;
+	bool			read_only;
+};
+
+#if IS_ENABLED(CONFIG_NVMEM)
+
+struct nvmem_device *nvmem_register(const struct nvmem_config *cfg,
+				    struct regmap *map);
+int nvmem_unregister(struct nvmem_device *nvmem);
+
+#else
+
+static inline struct nvmem_device *nvmem_register(const struct nvmem_config *c,
+						  struct regmap *map);
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline int nvmem_unregister(struct nvmem_device *nvmem)
+{
+	return -ENOSYS;
+}
+
+#endif /* CONFIG_NVMEM */
+
+#endif  /* ifndef _LINUX_NVMEM_PROVIDER_H */
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
