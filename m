Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1csWPY-0002IB-4a
 for barebox@lists.infradead.org; Mon, 27 Mar 2017 15:18:26 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 27 Mar 2017 17:17:39 +0200
Message-Id: <20170327151741.9971-3-o.rempel@pengutronix.de>
In-Reply-To: <20170327151741.9971-1-o.rempel@pengutronix.de>
References: <20170327151741.9971-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 2/4] nvmem: add snvs_lpgpr for freescale imx6
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

SNVS LPGPR is Non Volatile Low Power Generic Purpose Register which
can be used as part of nvmem framework.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/Kconfig      |  10 ++++
 drivers/nvmem/Makefile     |   4 ++
 drivers/nvmem/snvs_lpgpr.c | 115 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 129 insertions(+)
 create mode 100644 drivers/nvmem/snvs_lpgpr.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 218be05b2..d801cc25a 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -6,3 +6,13 @@ menuconfig NVMEM
 	  This framework is designed to provide a generic interface to NVMEM
 
 	  If unsure, say no.
+
+if NVMEM
+
+config NVMEM_SNVS_LPGPR
+	tristate "Freescale SNVS LPGPR support"
+	select MFD_SYSCON
+	help
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
index 000000000..74118a6b7
--- /dev/null
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -0,0 +1,115 @@
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
+#include <regmap.h>
+#include <mfd/syscon.h>
+#include <linux/nvmem-provider.h>
+
+struct snvs_lpgpr_priv {
+	struct device_d		*dev;
+	struct regmap		*regmap;
+	int			offset;
+	struct nvmem_config	cfg;
+};
+
+static int snvs_lpgpr_write(struct device_d *dev, const int reg,
+			    const void *_val, int bytes)
+{
+	struct snvs_lpgpr_priv *priv = dev->parent->priv;
+	const u32 *val = _val;
+	int i = 0, words = bytes / 4;
+
+	while (words--)
+		regmap_write(priv->regmap, priv->offset + reg + (i++ * 4),
+			     *val++);
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
+		regmap_read(priv->regmap, priv->offset + reg + (i++ * 4),
+			    val++);
+
+
+	return 0;
+}
+
+static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
+	.write = snvs_lpgpr_write,
+	.read  = snvs_lpgpr_read,
+};
+
+static int snvs_lpgpr_probe(struct device_d *dev)
+{
+	struct device_node *node = dev->device_node;
+	struct snvs_lpgpr_priv *priv;
+	struct nvmem_config *cfg;
+	struct nvmem_device *nvmem;
+	int err;
+
+	if (!node)
+		return -ENOENT;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->regmap = syscon_node_to_regmap(of_get_parent(node));
+	if (IS_ERR(priv->regmap)) {
+		free(priv);
+		return PTR_ERR(priv->regmap);
+	}
+
+	err = of_property_read_u32(node, "offset", &priv->offset);
+	if (err)
+		return err;
+
+	cfg = &priv->cfg;
+	cfg->name = dev_name(dev);
+	cfg->dev = dev;
+	cfg->stride = 4,
+	cfg->word_size = 4,
+	cfg->size = 4,
+	cfg->bus = &snvs_lpgpr_nvmem_bus,
+
+	nvmem = nvmem_register(cfg);
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
