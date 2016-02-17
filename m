Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22f.google.com ([2607:f8b0:400e:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwW-0003ng-MH
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:16 +0000
Received: by mail-pf0-x22f.google.com with SMTP id q63so1538703pfb.0
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:19 -0800
Message-Id: <1455672559-25061-19-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/18] [RFC] nvmem: Add nvmem-sg driver
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add nvmem-sg driver which adds provisions to create fake 'nvmem' devices
whose cells are comprised of bits and pieces of other 'nvmem' cells in
a scatter-gather manner.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/misc/Makefile   |   1 +
 drivers/misc/nvmem-sg.c | 287 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 288 insertions(+)
 create mode 100644 drivers/misc/nvmem-sg.c

diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index c7f56f8..d048596 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-y += mac-address-map.o
 obj-y += nvmem-ro-of-blob.o
+obj-y += nvmem-sg.o
diff --git a/drivers/misc/nvmem-sg.c b/drivers/misc/nvmem-sg.c
new file mode 100644
index 0000000..7fd5eb4
--- /dev/null
+++ b/drivers/misc/nvmem-sg.c
@@ -0,0 +1,287 @@
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <of.h>
+#include <state.h>
+#include <io.h>
+#include <fcntl.h>
+#include <net.h>
+#include <regmap.h>
+
+#include <linux/err.h>
+#include <linux/nvmem-provider.h>
+#include <linux/nvmem-consumer.h>
+
+struct nvmem_sg {
+	struct regmap *map;
+	struct nvmem_config config;
+	struct nvmem_device *nvmem;
+
+	struct list_head cells;
+};
+
+struct nvmem_sg_item {
+	struct nvmem_cell *cell;
+
+	size_t idx;
+	size_t start;
+	size_t end;
+	size_t size;
+
+	struct list_head node;
+};
+
+struct nvmem_sg_cell {
+	struct nvmem_sg *nsg;
+
+	size_t start;
+	size_t end;
+	size_t size;
+
+	struct list_head layout;
+	struct list_head node;
+};
+
+struct nvmem_sg_item *nvmem_sg_find_item(struct nvmem_sg_cell *cell,
+					 unsigned int nr)
+{
+	struct nvmem_sg_item *item;
+	list_for_each_entry(item, &cell->layout, node) {
+		pr_info("[%d %d]\n", item->start, item->end);
+		if (item->start <= nr && nr <= item->end)
+			return item;
+	}
+
+	return NULL;
+}
+
+
+static int nvmem_sg_cell_read_byte(struct nvmem_sg_cell *cell,
+				   unsigned int nr,
+				   unsigned int *val)
+{
+	unsigned int size;
+	uint8_t *data;
+	struct nvmem_sg_item *item = nvmem_sg_find_item(cell, nr);
+
+	if (!item)
+		return -EINVAL;
+
+	data = nvmem_cell_read(item->cell, &size);
+	if (IS_ERR(data)) {
+		dev_dbg(cell->nsg->config.dev,
+			"Failed to read a cell\n");
+		return PTR_ERR(data);
+	}
+
+	*val = data[nr - item->start + item->idx];
+	pr_info("nr: %d %x\n", nr, *val);
+
+	free(data);
+	return 0;
+}
+
+struct nvmem_sg_cell *nvmem_sg_find_cell(struct nvmem_sg *nsg,
+					 unsigned int reg)
+{
+	struct nvmem_sg_cell *cell;
+
+	list_for_each_entry(cell, &nsg->cells, node)
+		if (cell->start <= reg && reg <= cell->end)
+			return cell;
+
+	return NULL;
+}
+
+static int nvmem_sg_reg_write(void *ctx, unsigned int reg,
+			      unsigned int val)
+{
+	return -ENOTSUPP;
+}
+
+static int nvmem_sg_reg_read(void *ctx, unsigned int reg,
+			     unsigned int *val)
+{
+	struct nvmem_sg *nsg = ctx;
+	struct nvmem_sg_cell *cell = nvmem_sg_find_cell(nsg, reg);
+
+	if (cell) {
+		const unsigned int nr = reg - cell->start;
+		return nvmem_sg_cell_read_byte(cell, nr, val);
+	}
+
+	pr_debug("No sg cell found for reg %x\n", reg);
+	return -ENOENT;
+}
+
+static const struct regmap_bus nvmem_sg_regmap_bus = {
+	.reg_write = nvmem_sg_reg_write,
+	.reg_read  = nvmem_sg_reg_read,
+};
+
+static const struct regmap_config nvmem_sg_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.reg_stride = 1,
+	.max_register = 0xbc,
+};
+
+static int nvmem_sg_validate_dt(struct device_node *np)
+{
+	/* FIXME */
+	return 0;
+}
+
+static int nvmem_sg_cell_populate(struct nvmem_sg_cell *sg_cell,
+				  struct device_node *sg_cell_np)
+{
+	int i;
+	int ret;
+	int len;
+	size_t start;
+
+	struct nvmem_sg_item *item = NULL;
+	const __be32 *addr = of_get_property(sg_cell_np, "layout", &len);
+	const unsigned int cell_count = len / (3 * sizeof(__be32));
+
+	BUG_ON(!addr);
+	BUG_ON(!cell_count);
+
+	start = 0;
+	for (i = 0; i < cell_count; i++) {
+		struct device_node *cell_np;
+		uint32_t phandle;
+
+		item = xzalloc(sizeof(*item));
+
+		phandle = be32_to_cpup(addr++);
+		cell_np = of_find_node_by_phandle(phandle);
+		if (!cell_np) {
+			dev_dbg(sg_cell->nsg->config.dev,
+				"No device tree node corresponds to phandle\n");
+			ret = -ENOENT;
+			goto unwind;
+		}
+
+		item->cell = of_nvmem_cell_from_cell_np(cell_np);
+		if (IS_ERR(item->cell)) {
+			dev_dbg(sg_cell->nsg->config.dev,
+				"Failed to instantiate nvmem cell from "
+				"a device tree node\n");
+			ret = PTR_ERR(item->cell);
+			goto unwind;
+		}
+
+		item->start = start;
+		item->idx  = be32_to_cpup(addr++);
+		item->size = be32_to_cpup(addr++);
+		item->end  = item->start + item->size - 1;
+		start += item->size;
+
+		list_add_tail(&item->node, &sg_cell->layout);
+	}
+
+	return 0;
+
+unwind:
+	free(item);
+	/* FIXME */
+	BUG();
+
+	return ret;
+}
+
+static int nvmem_sg_probe(struct device_d *dev)
+{
+	int ret;
+	struct device_node *np = dev->device_node;
+	struct device_node *child;
+
+	struct nvmem_sg *nsg;
+	struct nvmem_sg_cell *cell;
+
+	BUG_ON(!np);
+
+	if (!of_get_next_child(np, NULL)) {
+		dev_dbg(dev, "Device node doesn't specify any cells\n");
+		return -EINVAL;
+	}
+
+	ret = nvmem_sg_validate_dt(np);
+	if (ret < 0) {
+		dev_dbg(dev, "Device validation failed\n");
+		return ret;
+	}
+
+	nsg = xzalloc(sizeof(*nsg));
+	INIT_LIST_HEAD(&nsg->cells);
+
+	for_each_child_of_node(np, child) {
+		const __be32 *addr;
+		int len;
+
+		addr = of_get_property(child, "reg", &len);
+		BUG_ON(!addr);
+
+		cell = xzalloc(sizeof(*cell));
+		INIT_LIST_HEAD(&cell->layout);
+		cell->nsg   = nsg;
+		cell->start = be32_to_cpup(addr++);
+		cell->size  = be32_to_cpup(addr);
+		cell->end   = cell->start + cell->size - 1;
+
+		ret = nvmem_sg_cell_populate(cell, child);
+		if (ret < 0) {
+			dev_dbg(dev,
+				"Failed to popluate sg-cell\n");
+			goto free_resources;
+		}
+
+		list_add_tail(&cell->node, &nsg->cells);
+	}
+
+	nsg->map = regmap_init(dev,
+			       &nvmem_sg_regmap_bus,
+			       nsg,
+			       &nvmem_sg_regmap_config);
+	if (IS_ERR(nsg->map)) {
+		dev_dbg(dev, "Failed to register 'nvmem' device\n");
+		ret = PTR_ERR(nsg->map);
+		goto free_resources;
+	}
+
+	nsg->config.name = "nvmem-sg";
+	nsg->config.read_only = true;
+	nsg->config.dev = dev;
+
+	nsg->nvmem = nvmem_register(&nsg->config, nsg->map);
+	if (IS_ERR(nsg->nvmem)) {
+		dev_dbg(dev, "Failed to register 'nvmem' device\n");
+		ret = PTR_ERR(nsg->nvmem);
+		goto free_resources;
+	}
+
+	dev_dbg(dev, "probed\n");
+	return 0;
+
+free_resources:
+	/* FIXME */
+	BUG();
+	return ret;
+}
+
+static __maybe_unused struct of_device_id nvmem_sg_ids[] = {
+	{
+		.compatible = "barebox,nvmem-sg",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d nvmem_sg_driver = {
+	.name = "nvmem-sg",
+	.probe = nvmem_sg_probe,
+	.of_compatible = DRV_OF_COMPAT(nvmem_sg_ids),
+};
+device_platform_driver(nvmem_sg_driver);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
