Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpulX-0003WK-0b
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 10:42:22 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 20 Mar 2017 11:41:51 +0100
Message-Id: <20170320104153.28902-3-o.rempel@pengutronix.de>
In-Reply-To: <20170320104153.28902-1-o.rempel@pengutronix.de>
References: <20170320104153.28902-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 2/4] nvmem: add snvs_lpgpr for freescale imx6
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

SNVS LPGPR is Non Volatile Low Power Generic Purpose Register which
can be used as part of nvmem framework.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/Kconfig      |   9 ++++
 drivers/nvmem/Makefile     |   4 ++
 drivers/nvmem/snvs_lpgpr.c | 122 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 135 insertions(+)
 create mode 100644 drivers/nvmem/snvs_lpgpr.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 218be05b2..1b0ca2757 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -6,3 +6,12 @@ menuconfig NVMEM
 	  This framework is designed to provide a generic interface to NVMEM
 
 	  If unsure, say no.
+
+if NVMEM
+
+config NVMEM_SNVS_LPGPR
+       tristate "Freescale SNVS LPGPR support"
+       help
+	  If you say yes here you get NVMEM support for the Freescale SNVS
+	  Low Power Generic Purpose Register (LPGPR).
+endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 6df2c6952..32522e9fb 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -4,3 +4,7 @@
 
 obj-$(CONFIG_NVMEM)		+= nvmem_core.o
 nvmem_core-y			:= core.o
+
+# Devices
+obj-$(CONFIG_NVMEM_SNVS_LPGPR)	+= nvmem_snvs_lpgpr.o
+nvmem_snvs_lpgpr-y		:= snvs_lpgpr.o
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
new file mode 100644
index 000000000..ebe91d755
--- /dev/null
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -0,0 +1,122 @@
+/*
+ * Copyright (c) 2015 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ * Copyright (c) 2017 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ */
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <malloc.h>
+#include <linux/nvmem-provider.h>
+
+struct snvs_lpgpr_priv {
+	struct device_d	*dev;
+	void __iomem	*base;
+	int		offset;
+};
+
+static int snvs_lpgpr_write(struct device_d *dev, const int reg, const void *_val,
+			 int bytes)
+{
+	struct snvs_lpgpr_priv *priv = dev->parent->priv;
+	const u32 *val = _val;
+	int i = 0, words = bytes / 4;
+
+	while (words--)
+		writel(*val++, priv->base + reg + (i++ * 4));
+
+	return 0;
+}
+
+static int snvs_lpgpr_read(struct device_d *dev, const int reg, void *_val,
+			int bytes)
+{
+	struct snvs_lpgpr_priv *priv = dev->parent->priv;
+	u32 *val = _val;
+	int i = 0, words = bytes / 4;
+
+	while (words--)
+		*val++ = readl(priv->base + reg + (i++ * 4));
+
+	return 0;
+}
+
+static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
+	.write = snvs_lpgpr_write,
+	.read  = snvs_lpgpr_read,
+};
+
+static struct nvmem_config snvs_lpgpr_cfg = {
+	.stride = 4,
+	.word_size = 4,
+	.size = 4,
+	.bus = &snvs_lpgpr_nvmem_bus,
+};
+
+static int snvs_lpgpr_probe(struct device_d *dev)
+{
+	struct device_node *node = dev->device_node;
+	struct snvs_lpgpr_priv *priv;
+	struct nvmem_device *nvmem;
+	struct resource *res;
+	int err;
+
+	if (!node)
+		return -ENOENT;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res)) {
+		res = dev_get_resource(dev->parent, IORESOURCE_MEM, 0);
+		if (IS_ERR(res)) {
+			free(priv);
+			return PTR_ERR(res);
+		}
+	}
+
+	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	if (IS_ERR(res)) {
+		free(priv);
+		return PTR_ERR(res);
+	}
+
+	err = of_property_read_u32(node, "offset", &priv->offset);
+	if (err)
+		return err;
+
+	priv->base = (void __iomem *)res->start + priv->offset;
+
+	snvs_lpgpr_cfg.name = dev_name(dev);
+	snvs_lpgpr_cfg.dev = dev;
+
+	nvmem = nvmem_register(&snvs_lpgpr_cfg);
+	if (IS_ERR(nvmem)) {
+		free(priv);
+		return PTR_ERR(nvmem);
+	}
+
+	dev->priv = priv;
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id snvs_lpgpr_dt_ids[] = {
+	{ .compatible = "fsl,imx6sl-snvs-lpgpr", },
+	{ .compatible = "fsl,imx6q-snvs-lpgpr", },
+	{ },
+};
+
+static struct driver_d snvs_lpgpr_driver = {
+	.name	= "nvmem-snvs-lpgpr",
+	.probe	= snvs_lpgpr_probe,
+	.of_compatible = DRV_OF_COMPAT(snvs_lpgpr_dt_ids),
+};
+device_platform_driver(snvs_lpgpr_driver);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
