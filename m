Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x234.google.com ([2607:f8b0:400e:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwV-0003ne-V8
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:15 +0000
Received: by mail-pf0-x234.google.com with SMTP id e127so1490673pfe.3
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:18 -0800
Message-Id: <1455672559-25061-18-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/18] [RFC] nvmem: Add nvmem-ro-of-blob driver
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a driver that implements provisions to allow creationg of fake nvmem
devices and cells whose data comes from device tree  blob.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/misc/Makefile           |   1 +
 drivers/misc/nvmem-ro-of-blob.c | 196 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 197 insertions(+)
 create mode 100644 drivers/misc/nvmem-ro-of-blob.c

diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 94d2a4f..c7f56f8 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-y += mac-address-map.o
+obj-y += nvmem-ro-of-blob.o
diff --git a/drivers/misc/nvmem-ro-of-blob.c b/drivers/misc/nvmem-ro-of-blob.c
new file mode 100644
index 0000000..8a9f091
--- /dev/null
+++ b/drivers/misc/nvmem-ro-of-blob.c
@@ -0,0 +1,196 @@
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
+struct nvmem_ro_of_blob_cell {
+	struct list_head node;
+
+        unsigned int start;
+	unsigned int end;
+	unsigned int size;
+
+	u8 *data;
+};
+
+struct nvmem_ro_of_blob {
+	struct regmap *map;
+	struct nvmem_config config;
+	struct nvmem_device *nvmem;
+	struct list_head cells;
+};
+
+struct nvmem_ro_of_blob_cell *
+nvmem_ro_of_blob_reg_to_cell(struct nvmem_ro_of_blob *nrob,
+			     unsigned int reg)
+{
+	struct nvmem_ro_of_blob_cell *cell;
+
+	list_for_each_entry(cell, &nrob->cells, node) {
+		if (cell->start <= reg && reg <= cell->end)
+			return cell;
+	}
+
+	return NULL;
+}
+
+
+static int nvmem_ro_of_blob_reg_write(void *ctx, unsigned int reg,
+				      unsigned int val)
+{
+	return -ENOTSUPP;
+}
+
+static int nvmem_ro_of_blob_reg_read(void *ctx, unsigned int reg,
+				     unsigned int *val)
+{
+	struct nvmem_ro_of_blob *nrob = ctx;
+	struct nvmem_ro_of_blob_cell *cell =
+		nvmem_ro_of_blob_reg_to_cell(nrob, reg);
+
+	if (!cell)
+		return -ENOENT;
+
+	*val = cell->data[reg - cell->start];
+	return 0;
+}
+
+static const struct regmap_bus nvmem_ro_of_blob_regmap_bus = {
+	.reg_write = nvmem_ro_of_blob_reg_write,
+	.reg_read  = nvmem_ro_of_blob_reg_read,
+};
+
+static const struct regmap_config nvmem_ro_of_blob_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.reg_stride	= 1,
+	.max_register	= 0xbc,
+};
+
+static int nvmem_ro_of_blob_validate_dt(struct device_node *np)
+{
+	/* struct device_node *child; */
+	/* for_each_child_of_node(np, child) { */
+	/* 	const __be32 *addr; */
+	/* 	int len; */
+
+	/* 	addr = of_get_property(child, "reg", &len); */
+	/* 	if (!addr) */
+	/* 		return -EINVAL; */
+
+	/* } */
+
+	return 0;
+}
+
+static int nvmem_ro_of_blob_probe(struct device_d *dev)
+{
+	int ret;
+	struct list_head *p, *n;
+	struct device_node *np = dev->device_node;
+	struct device_node *child;
+
+	struct nvmem_ro_of_blob *nrob;
+	struct nvmem_ro_of_blob_cell *cell;
+
+	BUG_ON(!np);
+
+	if (!of_get_next_child(np, NULL)) {
+		dev_dbg(dev, "Device node doesn't specify any cells\n");
+		return -EINVAL;
+	}
+
+	ret = nvmem_ro_of_blob_validate_dt(np);
+	if (ret < 0) {
+		dev_dbg(dev, "Device tree validation failed\n");
+		return ret;
+	}
+
+	nrob = xzalloc(sizeof(*nrob));
+	INIT_LIST_HEAD(&nrob->cells);
+
+	for_each_child_of_node(np, child) {
+		struct property *pp;
+		const __be32 *addr;
+		int len;
+
+		addr = of_get_property(child, "reg", &len);
+		BUG_ON(!addr);
+		cell = xzalloc(sizeof(*cell));
+
+		cell->start = be32_to_cpup(addr++);
+		cell->size  = be32_to_cpup(addr);
+		cell->end   = cell->start + cell->size - 1;
+
+		pp = of_find_property(child, "data", NULL);
+		BUG_ON(!pp || pp->length != cell->size);
+		cell->data = pp->value;
+
+		list_add_tail(&cell->node, &nrob->cells);
+	}
+
+	nrob->map = regmap_init(dev,
+				&nvmem_ro_of_blob_regmap_bus,
+				nrob,
+				&nvmem_ro_of_blob_regmap_config);
+	if (IS_ERR(nrob->map)) {
+		dev_dbg(dev, "Failed to initilize regmap\n");
+		ret = PTR_ERR(nrob->map);
+		goto free_resources;
+	}
+
+	nrob->config.name = "nvmem-ro-of-blob";
+	nrob->config.read_only = true;
+	nrob->config.dev = dev;
+
+	nrob->nvmem = nvmem_register(&nrob->config, nrob->map);
+	if (IS_ERR(nrob->nvmem)) {
+		dev_dbg(dev, "Filed to register nvmem device\n");
+		ret = PTR_ERR(nrob->nvmem);
+		goto free_resources;
+	}
+
+	dev_dbg(dev, "probed\n");
+	return 0;
+
+free_resources:
+	if (!IS_ERR_OR_NULL(nrob->map))
+		regmap_exit(nrob->map);
+
+	list_for_each_safe(p, n, &nrob->cells) {
+		cell = list_entry(p,
+				  struct nvmem_ro_of_blob_cell,
+				  node);
+		list_del(p);
+		free(cell->data);
+		free(cell);
+	}
+	free(nrob);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id nvmem_ro_of_blob_ids[] = {
+	{
+		.compatible = "barebox,nvmem-ro-of-blob",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d nvmem_ro_of_blob_driver = {
+	.name = "nvmem-ro-of-blob",
+	.probe = nvmem_ro_of_blob_probe,
+	.of_compatible = DRV_OF_COMPAT(nvmem_ro_of_blob_ids),
+};
+device_platform_driver(nvmem_ro_of_blob_driver);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
