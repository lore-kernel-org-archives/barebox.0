Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1buymM-0004zh-1w
 for barebox@lists.infradead.org; Fri, 14 Oct 2016 09:27:52 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Oct 2016 11:27:13 +0200
Message-Id: <20161014092715.4257-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 1/3] reset: import socfpga-reset driver from linux
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Port the linux v4.8-rc1 reset-socfpga driver to barebox.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes since v1:
  - use dev_request_mem_resource

 drivers/reset/Makefile        |   1 +
 drivers/reset/reset-socfpga.c | 124 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 125 insertions(+)
 create mode 100644 drivers/reset/reset-socfpga.c

diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 1e2d83f2b995..52b10cd48055 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_RESET_CONTROLLER) += core.o
+obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
new file mode 100644
index 000000000000..9214197e627d
--- /dev/null
+++ b/drivers/reset/reset-socfpga.c
@@ -0,0 +1,124 @@
+/*
+ * Copyright 2014 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * based on
+ * Allwinner SoCs Reset Controller driver
+ *
+ * Copyright 2013 Maxime Ripard
+ *
+ * Maxime Ripard <maxime.ripard@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/err.h>
+#include <linux/reset-controller.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
+
+#define NR_BANKS		4
+
+struct socfpga_reset_data {
+	spinlock_t			lock;
+	void __iomem			*membase;
+	u32				modrst_offset;
+	struct reset_controller_dev	rcdev;
+};
+
+static int socfpga_reset_assert(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	struct socfpga_reset_data *data = container_of(rcdev,
+						     struct socfpga_reset_data,
+						     rcdev);
+	int bank = id / BITS_PER_LONG;
+	int offset = id % BITS_PER_LONG;
+	unsigned long flags;
+	u32 reg;
+
+	spin_lock_irqsave(&data->lock, flags);
+
+	reg = readl(data->membase + data->modrst_offset + (bank * NR_BANKS));
+	writel(reg | BIT(offset), data->membase + data->modrst_offset +
+				 (bank * NR_BANKS));
+	spin_unlock_irqrestore(&data->lock, flags);
+
+	return 0;
+}
+
+static int socfpga_reset_deassert(struct reset_controller_dev *rcdev,
+				  unsigned long id)
+{
+	struct socfpga_reset_data *data = container_of(rcdev,
+						     struct socfpga_reset_data,
+						     rcdev);
+
+	int bank = id / BITS_PER_LONG;
+	int offset = id % BITS_PER_LONG;
+	unsigned long flags;
+	u32 reg;
+
+	spin_lock_irqsave(&data->lock, flags);
+
+	reg = readl(data->membase + data->modrst_offset + (bank * NR_BANKS));
+	writel(reg & ~BIT(offset), data->membase + data->modrst_offset +
+				  (bank * NR_BANKS));
+
+	spin_unlock_irqrestore(&data->lock, flags);
+
+	return 0;
+}
+
+static struct reset_control_ops socfpga_reset_ops = {
+	.assert		= socfpga_reset_assert,
+	.deassert	= socfpga_reset_deassert,
+};
+
+static int socfpga_reset_probe(struct device_d *dev)
+{
+	struct socfpga_reset_data *data;
+	struct resource *res;
+	struct device_node *np = dev->device_node;
+
+	data = xzalloc(sizeof(*data));
+
+	res = dev_request_mem_resource(dev, 0);
+	data->membase = IOMEM(res->start);
+	if (IS_ERR(data->membase))
+		return PTR_ERR(data->membase);
+
+	if (of_property_read_u32(np, "altr,modrst-offset", &data->modrst_offset)) {
+		dev_warn(dev, "missing altr,modrst-offset property, assuming 0x10!\n");
+		data->modrst_offset = 0x10;
+	}
+
+	spin_lock_init(&data->lock);
+
+	data->rcdev.nr_resets = NR_BANKS * BITS_PER_LONG;
+	data->rcdev.ops = &socfpga_reset_ops;
+	data->rcdev.of_node = np;
+
+	return reset_controller_register(&data->rcdev);
+}
+
+static const struct of_device_id socfpga_reset_dt_ids[] = {
+	{ .compatible = "altr,rst-mgr", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d socfpga_reset_driver = {
+	.probe	= socfpga_reset_probe,
+	.of_compatible	= DRV_OF_COMPAT(socfpga_reset_dt_ids),
+};
+
+static int socfpga_reset_init(void)
+{
+	return platform_driver_register(&socfpga_reset_driver);
+}
+postcore_initcall(socfpga_reset_init);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
