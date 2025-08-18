Delivery-date: Mon, 18 Aug 2025 20:31:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dg-001yXE-2x
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4db-000477-Td
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QoFi6pfI+8oM6HZPcYjHeGEC9ZPaQKIcc+9/572p0R0=; b=R5wG9V5inVSm+j6GdiWZVT3PPf
	sQQ5bmKJTqZCDBHigOq54dZq4wBT4uiq/594YHvs0zxnHVM5XZWUdmnvXJXvMXNdDWCAvDymDKVT4
	4romZ/o4tnAi+9GazdNpSZ1x4eOS2C5CuQpnYl0omsbsbuZaMF0zacDukafv/3suniXnaSXo5ObXK
	5yRMHlmoANWwrhy4an/+EVA/7y8tTwzcukgIWb4fND+SSZI99WYXIVc3VZ4mZaLxpNMSHdA7MXtUz
	HQFiSMVSKcXibY+P6TgN41PUq6SArGG6WQ0XVdkLV7tGrZeunMRKH3qtH/KSRInLOVR/6pjFqfjN/
	zsR4kT+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4ct-00000008LXd-03Gq;
	Mon, 18 Aug 2025 18:30:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uZ-00000008F6E-1Jcr
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=QoFi6pfI+8oM6HZPcYjHeGEC9ZPaQKIcc+9/572p0R0=; b=XL89TKVwYLZS+Xp+4o1UiNhJxB
	g6ZQPV04Ye2RYyX0r9ldcxLuho3Ht+XN9J7tOnj/34X3HdKOiHzZehuT/FlZ6KXssf7Ct/9mnknmG
	eqgR813wOYI9++9Ys0YJ+twZxD/DVof+nhbzde8b8ZHcOgjrWXPrXteH05c8JdTZebRLcd0EDst1F
	G5nez05ddNjOF43gNj8RAh0L3+nA1aOs5izv1iuMhTFABZntUHX2/vF3R7+R2R6Zg/AI3/CZa3xBi
	1qdt2EKgocY9v5r9P/Cw1enBhMpmyQMJTseB3qPWFR27YyqoUVJILvMBt+KgncTDeppVZaxgmrR6E
	0ZdL5SjQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uT-0000000HStE-2x20
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-TD; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-10-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184442_100503_458C9CCB 
X-CRM114-Status: GOOD (  30.99  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/15] nvmem: core: add nvmem-layout support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports the Linux nvmem-layout core infrastructure required for the
actual nvmem-layout drivers. This commit doesn't add any specific
nvmem-layout driver.

A nvmem-layout is the new way to describe the nvmem storage format. The
nvmem-layout driver parses the nvmem sotrage format and provides the
information via nvmem-cells.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/Kconfig          |   7 ++
 drivers/nvmem/Makefile         |   3 +
 drivers/nvmem/core.c           | 100 +++++++++++++++++++++++-
 drivers/nvmem/internals.h      |  22 ++++++
 drivers/nvmem/layouts.c        | 173 +++++++++++++++++++++++++++++++++++++++++
 drivers/nvmem/layouts/Kconfig  |  13 ++++
 drivers/nvmem/layouts/Makefile |   7 ++
 include/linux/nvmem-provider.h |  63 +++++++++++++++
 8 files changed, 385 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 349471ce393275298acbe684328f731260a5f2ba..41a3bf26dda04155e7457a5bd9473ff4be646574 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menuconfig NVMEM
 	bool "NVMEM Support"
+	imply NVMEM_LAYOUTS
 	help
 	  Support for NVMEM(Non Volatile Memory) devices like EEPROM, EFUSES...
 
@@ -10,6 +11,12 @@ menuconfig NVMEM
 
 if NVMEM
 
+# Layouts
+
+source "drivers/nvmem/layouts/Kconfig"
+
+# Devices
+
 config NVMEM_RMEM
 	bool "Reserved Memory Based Driver Support"
 	help
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 31db05e5a71c4fd398f84e08bf45da1e6ba23312..fdd5c63e321db009f5eaa282e0b37fe0c8f28572 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -5,6 +5,9 @@
 
 obj-$(CONFIG_NVMEM)		+= nvmem_core.o
 nvmem_core-y			:= core.o regmap.o partition.o
+obj-$(CONFIG_NVMEM_LAYOUTS)	+= nvmem_layouts.o
+nvmem_layouts-y			:= layouts.o
+obj-y				+= layouts/
 
 obj-$(CONFIG_NVMEM_RMEM)	+= rmem.o
 
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 7d026330105b629e68353ae5cdbbf966284da7ea..b87dd9375c6f0a2b446e4f1c2e51c6bf042e550d 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -35,6 +35,7 @@ struct nvmem_cell {
 };
 
 static LIST_HEAD(nvmem_devs);
+static LIST_HEAD(nvmem_layouts);
 
 void nvmem_devices_print(void)
 {
@@ -191,6 +192,9 @@ static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
 	struct device *dev = &nvmem->dev;
 	struct nvmem_cell_entry *entry;
 
+	if (list_empty(&nvmem->cells) || nvmem->sysfs_cells_populated)
+		return 0;
+
 	list_for_each_entry(entry, &nvmem->cells, node) {
 		struct cdev *cdev;
 		int ret;
@@ -211,6 +215,8 @@ static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
 		}
 	}
 
+	nvmem->sysfs_cells_populated = true;
+
 	return 0;
 }
 
@@ -380,6 +386,52 @@ static int nvmem_add_cells_from_legacy_of(struct nvmem_device *nvmem)
 	return nvmem_add_cells_from_dt(nvmem, nvmem->dev.of_node);
 }
 
+static int nvmem_add_cells_from_fixed_layout(struct nvmem_device *nvmem)
+{
+	struct device_node *layout_np;
+	int err = 0;
+
+	layout_np = of_nvmem_layout_get_container(nvmem);
+	if (!layout_np)
+		return 0;
+
+	if (of_device_is_compatible(layout_np, "fixed-layout"))
+		err = nvmem_add_cells_from_dt(nvmem, layout_np);
+
+	of_node_put(layout_np);
+
+	return err;
+}
+
+int nvmem_layout_register(struct nvmem_layout *layout)
+{
+	int ret;
+
+	if (!layout->add_cells)
+		return -EINVAL;
+
+	/* Populate the cells */
+	ret = layout->add_cells(layout);
+	if (ret)
+		return ret;
+
+	ret = nvmem_populate_sysfs_cells(layout->nvmem);
+	if (ret) {
+		nvmem_device_remove_all_cdevs(layout->nvmem);
+		nvmem_device_remove_all_cells(layout->nvmem);
+		return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvmem_layout_register);
+
+void nvmem_layout_unregister(struct nvmem_layout *layout)
+{
+	/* Keep the API even with an empty stub in case we need it later */
+}
+EXPORT_SYMBOL_GPL(nvmem_layout_unregister);
+
 /**
  * nvmem_register() - Register a nvmem device for given nvmem_config.
  *
@@ -419,6 +471,10 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	if (rval)
 		goto err_remove_cells;
 
+	rval = nvmem_add_cells_from_fixed_layout(nvmem);
+	if (rval)
+		goto err_remove_cells;
+
 	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
@@ -443,14 +499,20 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 			goto err_unregister;
 	}
 
-	rval = nvmem_populate_sysfs_cells(nvmem);
+	rval = nvmem_populate_layout(nvmem);
 	if (rval)
 		goto err_remove_cdevs;
 
+	rval = nvmem_populate_sysfs_cells(nvmem);
+	if (rval)
+		goto err_destroy_layout;
+
 	list_add_tail(&nvmem->node, &nvmem_devs);
 
 	return nvmem;
 
+err_destroy_layout:
+	nvmem_destroy_layout(nvmem);
 err_remove_cdevs:
 	nvmem_device_remove_all_cdevs(nvmem);
 err_unregister:
@@ -609,6 +671,17 @@ nvmem_find_cell_entry_by_node(struct nvmem_device *nvmem, struct device_node *np
 	return cell;
 }
 
+static int nvmem_layout_module_get_optional(struct nvmem_device *nvmem)
+{
+	if (!nvmem->layout)
+		return 0;
+
+	if (!nvmem->layout->dev.driver)
+		return -EPROBE_DEFER;
+
+	return 0;
+}
+
 /**
  * of_nvmem_cell_get() - Get a nvmem cell from given device node and cell id
  *
@@ -638,13 +711,20 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np, const char *id)
 		return ERR_PTR(-ENOENT);
 
 	nvmem_np = of_get_parent(cell_np);
-	if (nvmem_np && of_device_is_compatible(nvmem_np, "fixed-layout"))
-		nvmem_np = of_get_parent(nvmem_np);
 	if (!nvmem_np) {
 		of_node_put(cell_np);
 		return ERR_PTR(-EINVAL);
 	}
 
+	/* nvmem layouts produce cells within the nvmem-layout container */
+	if (of_node_name_eq(nvmem_np, "nvmem-layout")) {
+		nvmem_np = of_get_parent(nvmem_np);
+		if (!nvmem_np) {
+			of_node_put(cell_np);
+			return ERR_PTR(-EINVAL);
+		}
+	}
+
 	nvmem = __nvmem_device_get(nvmem_np);
 	of_node_put(nvmem_np);
 	if (IS_ERR(nvmem)) {
@@ -652,6 +732,13 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np, const char *id)
 		return ERR_CAST(nvmem);
 	}
 
+	ret = nvmem_layout_module_get_optional(nvmem);
+	if (ret) {
+		of_node_put(cell_np);
+		__nvmem_device_put(nvmem);
+		return ERR_PTR(ret);
+	}
+
 	cell_entry = nvmem_find_cell_entry_by_node(nvmem, cell_np);
 	of_node_put(cell_np);
 	if (!cell_entry) {
@@ -1087,3 +1174,10 @@ struct device *nvmem_device_get_device(struct nvmem_device *nvmem)
 	return &nvmem->dev;
 }
 EXPORT_SYMBOL_GPL(nvmem_device_get_device);
+
+static int __init nvmem_init(void)
+{
+	/* TODO: add support for the NVMEM bus too */
+	return nvmem_layout_bus_register();
+}
+pure_initcall(nvmem_init);
diff --git a/drivers/nvmem/internals.h b/drivers/nvmem/internals.h
index c58a51bf72ab45ac7d941877021af4409fee9cf8..58382be750ec0382c427e3b3bcd676a789a7395a 100644
--- a/drivers/nvmem/internals.h
+++ b/drivers/nvmem/internals.h
@@ -19,6 +19,7 @@ struct nvmem_device {
 	bool			read_only;
 	struct cdev		cdev;
 	void			*priv;
+	struct nvmem_layout	*layout;
 	struct list_head	cells;
 	nvmem_cell_post_process_t cell_post_process;
 	int			(*reg_write)(void *ctx, unsigned int reg,
@@ -27,6 +28,27 @@ struct nvmem_device {
 					    void *val, size_t val_size);
 	int			(*reg_protect)(void *ctx, unsigned int reg,
 					       size_t bytes, int prot);
+	bool			sysfs_cells_populated;
 };
 
+#if IS_ENABLED(CONFIG_OF)
+int nvmem_layout_bus_register(void);
+int nvmem_populate_layout(struct nvmem_device *nvmem);
+void nvmem_destroy_layout(struct nvmem_device *nvmem);
+#else /* CONFIG_OF */
+static inline int nvmem_layout_bus_register(void)
+{
+	return 0;
+}
+
+static inline void nvmem_layout_bus_unregister(void) {}
+
+static inline int nvmem_populate_layout(struct nvmem_device *nvmem)
+{
+	return 0;
+}
+
+static inline void nvmem_destroy_layout(struct nvmem_device *nvmem) { }
+#endif /* CONFIG_OF */
+
 #endif  /* ifndef _LINUX_NVMEM_INTERNALS_H */
diff --git a/drivers/nvmem/layouts.c b/drivers/nvmem/layouts.c
new file mode 100644
index 0000000000000000000000000000000000000000..dfb7dc35895ad249585224ae69a39069ea852a1b
--- /dev/null
+++ b/drivers/nvmem/layouts.c
@@ -0,0 +1,173 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * NVMEM layout bus handling
+ *
+ * Copyright (C) 2023 Bootlin
+ * Author: Miquel Raynal <miquel.raynal@bootlin.com
+ */
+
+#include <device.h>
+#include <of_device.h>
+#include <module.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/nvmem-provider.h>
+
+#include "internals.h"
+
+#define to_nvmem_layout_driver(drv) \
+	(container_of_const((drv), struct nvmem_layout_driver, driver))
+#define to_nvmem_layout_device(_dev) \
+	container_of((_dev), struct nvmem_layout, dev)
+
+static int nvmem_layout_bus_match(struct device *dev, const struct device_driver *drv)
+{
+	return of_driver_match_device(dev, drv);
+}
+
+static int nvmem_layout_bus_probe(struct device *dev)
+{
+	struct nvmem_layout_driver *drv = to_nvmem_layout_driver(dev->driver);
+	struct nvmem_layout *layout = to_nvmem_layout_device(dev);
+
+	if (!drv->probe || !drv->remove)
+		return -EINVAL;
+
+	return drv->probe(layout);
+}
+
+static void nvmem_layout_bus_remove(struct device *dev)
+{
+	struct nvmem_layout_driver *drv = to_nvmem_layout_driver(dev->driver);
+	struct nvmem_layout *layout = to_nvmem_layout_device(dev);
+
+	return drv->remove(layout);
+}
+
+static struct bus_type nvmem_layout_bus_type = {
+	.name		= "nvmem-layout",
+	.match		= nvmem_layout_bus_match,
+	.probe		= nvmem_layout_bus_probe,
+	.remove		= nvmem_layout_bus_remove,
+};
+
+int nvmem_layout_driver_register(struct nvmem_layout_driver *drv)
+{
+	drv->driver.bus = &nvmem_layout_bus_type;
+
+	return register_driver(&drv->driver);
+}
+EXPORT_SYMBOL_GPL(nvmem_layout_driver_register);
+
+static int nvmem_layout_create_device(struct nvmem_device *nvmem,
+				      struct device_node *np)
+{
+	struct nvmem_layout *layout;
+	struct device *dev;
+	int ret;
+
+	layout = kzalloc(sizeof(*layout), GFP_KERNEL);
+	if (!layout)
+		return -ENOMEM;
+
+	/* Create a bidirectional link */
+	layout->nvmem = nvmem;
+	nvmem->layout = layout;
+
+	/* Device model registration */
+	dev = &layout->dev;
+	dev->parent = &nvmem->dev;
+	dev->bus = &nvmem_layout_bus_type;
+	dev->dma_mask = DMA_BIT_MASK(32);
+	dev->of_node = of_node_get(np);
+	of_device_make_bus_id(dev);
+
+	ret = register_device(dev);
+	if (ret) {
+		put_device(dev);
+		return ret;
+	}
+
+	np->dev = dev;
+
+	return 0;
+}
+
+static const struct of_device_id of_nvmem_layout_skip_table[] = {
+	{ .compatible = "fixed-layout", },
+	{}
+};
+
+static int nvmem_layout_bus_populate(struct nvmem_device *nvmem,
+				     struct device_node *layout_dn)
+{
+	int ret;
+
+	/* Make sure it has a compatible property */
+	if (!of_property_present(layout_dn, "compatible")) {
+		pr_debug("%s() - skipping %pOF, no compatible prop\n",
+			 __func__, layout_dn);
+		return 0;
+	}
+
+	/* Fixed layouts are parsed manually somewhere else for now */
+	if (of_match_node(of_nvmem_layout_skip_table, layout_dn)) {
+		pr_debug("%s() - skipping %pOF node\n", __func__, layout_dn);
+		return 0;
+	}
+
+	if (layout_dn->dev) {
+		pr_debug("%s() - skipping %pOF, already populated\n",
+			 __func__, layout_dn);
+
+		return 0;
+	}
+
+	/* NVMEM layout buses expect only a single device representing the layout */
+	ret = nvmem_layout_create_device(nvmem, layout_dn);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
+{
+	return of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");
+}
+EXPORT_SYMBOL_GPL(of_nvmem_layout_get_container);
+
+/*
+ * Returns the number of devices populated, 0 if the operation was not relevant
+ * for this nvmem device, an error code otherwise.
+ */
+int nvmem_populate_layout(struct nvmem_device *nvmem)
+{
+	struct device_node *layout_dn;
+	int ret;
+
+	layout_dn = of_nvmem_layout_get_container(nvmem);
+	if (!layout_dn)
+		return 0;
+
+	/* Populate the layout device */
+	ret = nvmem_layout_bus_populate(nvmem, layout_dn);
+
+	of_node_put(layout_dn);
+	return ret;
+}
+
+void nvmem_destroy_layout(struct nvmem_device *nvmem)
+{
+	struct device *dev;
+
+	if (!nvmem->layout)
+		return;
+
+	dev = &nvmem->layout->dev;
+	unregister_device(dev);
+}
+
+int nvmem_layout_bus_register(void)
+{
+	return bus_register(&nvmem_layout_bus_type);
+}
diff --git a/drivers/nvmem/layouts/Kconfig b/drivers/nvmem/layouts/Kconfig
new file mode 100644
index 0000000000000000000000000000000000000000..5b2848b23825d70ecd1026819e51d2612681e3f9
--- /dev/null
+++ b/drivers/nvmem/layouts/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config NVMEM_LAYOUTS
+	bool
+	depends on OF
+
+if NVMEM_LAYOUTS
+
+menu "Layout Types"
+
+endmenu
+
+endif
diff --git a/drivers/nvmem/layouts/Makefile b/drivers/nvmem/layouts/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..2202410b966b96a4cd0b992d04d62b7bc8e70d84
--- /dev/null
+++ b/drivers/nvmem/layouts/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for nvmem layouts.
+#
+
+# Dummy, can be delete once we do have a driver
+obj- := __dummy__.o
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 16242490a58f19a05aacc3a27c6d4557cd091ec5..346355ad988470ce27e78a3a52e4dfcb437e2f18 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -14,6 +14,7 @@
 
 #include <common.h>
 #include <linux/types.h>
+#include <linux/device.h>
 
 struct nvmem_device;
 typedef int (*nvmem_reg_read_t)(void *priv, unsigned int offset,
@@ -79,6 +80,32 @@ struct nvmem_config {
 	nvmem_cell_post_process_t cell_post_process;
 };
 
+/**
+ * struct nvmem_layout - NVMEM layout definitions
+ *
+ * @dev:		Device-model layout device.
+ * @nvmem:		The underlying NVMEM device
+ * @add_cells:		Will be called if a nvmem device is found which
+ *			has this layout. The function will add layout
+ *			specific cells with nvmem_add_one_cell().
+ *
+ * A nvmem device can hold a well defined structure which can just be
+ * evaluated during runtime. For example a TLV list, or a list of "name=val"
+ * pairs. A nvmem layout can parse the nvmem device and add appropriate
+ * cells.
+ */
+struct nvmem_layout {
+	struct device dev;
+	struct nvmem_device *nvmem;
+	int (*add_cells)(struct nvmem_layout *layout);
+};
+
+struct nvmem_layout_driver {
+	struct device_driver driver;
+	int (*probe)(struct nvmem_layout *layout);
+	void (*remove)(struct nvmem_layout *layout);
+};
+
 struct regmap;
 struct cdev;
 
@@ -92,6 +119,13 @@ struct device *nvmem_device_get_device(struct nvmem_device *nvmem);
 int nvmem_add_one_cell(struct nvmem_device *nvmem,
 		       const struct nvmem_cell_info *info);
 
+int nvmem_layout_register(struct nvmem_layout *layout);
+void nvmem_layout_unregister(struct nvmem_layout *layout);
+
+int nvmem_layout_driver_register(struct nvmem_layout_driver *drv);
+#define module_nvmem_layout_driver(drv)		\
+	register_driver_macro(device, nvmem_layout, drv)
+
 #else
 
 static inline struct nvmem_device *nvmem_register(const struct nvmem_config *c)
@@ -122,5 +156,34 @@ static inline int nvmem_add_one_cell(struct nvmem_device *nvmem,
 	return -EOPNOTSUPP;
 }
 
+static inline int nvmem_layout_register(struct nvmem_layout *layout)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void nvmem_layout_unregister(struct nvmem_layout *layout) {}
+
 #endif /* CONFIG_NVMEM */
+
+#if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OF)
+
+/**
+ * of_nvmem_layout_get_container() - Get OF node of layout container
+ *
+ * @nvmem: nvmem device
+ *
+ * Return: a node pointer with refcount incremented or NULL if no
+ * container exists. Use of_node_put() on it when done.
+ */
+struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem);
+
+#else  /* CONFIG_NVMEM && CONFIG_OF */
+
+static inline struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
+{
+	return NULL;
+}
+
+#endif /* CONFIG_NVMEM && CONFIG_OF */
+
 #endif  /* ifndef _LINUX_NVMEM_PROVIDER_H */

-- 
2.39.5



