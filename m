Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnN87-0001GT-SV
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 10:23:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 13 Mar 2017 11:22:07 +0100
Message-Id: <20170313102207.30590-3-o.rempel@pengutronix.de>
In-Reply-To: <20170313102207.30590-1-o.rempel@pengutronix.de>
References: <20170313102207.30590-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/2] nvmem: add simple nvstore driver
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/Kconfig   |   8 +++
 drivers/nvmem/Makefile  |   4 ++
 drivers/nvmem/nvstore.c | 142 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 154 insertions(+)
 create mode 100644 drivers/nvmem/nvstore.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 218be05b2..23ebc1ea7 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -6,3 +6,11 @@ menuconfig NVMEM
 	  This framework is designed to provide a generic interface to NVMEM
 
 	  If unsure, say no.
+
+if NVMEM
+
+config NVMEM_STORE
+       tristate "NVMEM storage"
+       help
+
+endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 6df2c6952..34a59c316 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -4,3 +4,7 @@
 
 obj-$(CONFIG_NVMEM)		+= nvmem_core.o
 nvmem_core-y			:= core.o
+
+# Devices
+obj-$(CONFIG_NVMEM_STORE)	+= nvmem_nvstore.o
+nvmem_nvstore-y			:= nvstore.o
diff --git a/drivers/nvmem/nvstore.c b/drivers/nvmem/nvstore.c
new file mode 100644
index 000000000..c1b256d92
--- /dev/null
+++ b/drivers/nvmem/nvstore.c
@@ -0,0 +1,142 @@
+/*
+ * Copyright (c) 2015 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <malloc.h>
+#include <linux/nvmem-provider.h>
+
+struct nvstore_priv {
+	struct device_d *dev;
+	void __iomem	*base;
+};
+
+static int nvstore_write(struct device_d *dev, const int reg, const void *val,
+			 int val_size)
+{
+	struct nvstore_priv *priv = dev->parent->priv;
+	unsigned int offset;
+
+	offset = reg;
+	while (val_size > 0) {
+		switch (val_size) {
+		case 1:
+			writeb(*(u8 *)val, priv->base + offset);
+			break;
+		case 2:
+			writew(*(u16 *)val, priv->base + offset);
+			break;
+		case 4:
+			writel(*(u32 *)val, priv->base + offset);
+			break;
+		}
+		val_size -= 4;
+		val += 4;
+		offset += 4;
+	}
+
+	return 0;
+}
+
+static int nvstore_read(struct device_d *dev, const int reg, void *val,
+			int val_size)
+{
+	struct nvstore_priv *priv = dev->parent->priv;
+	unsigned int offset;
+
+	offset = reg;
+
+	while (val_size > 0) {
+		switch (val_size) {
+		case 1:
+			*(u8 *)val = readb(priv->base + offset);
+			break;
+		case 2:
+			*(u16 *)val = readw(priv->base + offset);
+			break;
+		case 4:
+			*(u32 *)val = readl(priv->base + offset);
+			break;
+		}
+		val_size -= 4;
+		val += 4;
+		offset += 4;
+	}
+
+	return 0;
+}
+
+static struct nvmem_bus nvstore_nvmem_bus = {
+	.write = nvstore_write,
+	.read  = nvstore_read,
+};
+
+static struct nvmem_config nvstore_nvmem_config = {
+	.name = "nvstore",
+	.stride = 4,
+	.word_size = 4,
+};
+
+static int nvstore_probe(struct device_d *dev)
+{
+	struct nvstore_priv *priv;
+	struct nvmem_device *nvmem;
+	struct resource *res;
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
+	priv->base = (void __iomem *)res->start;
+
+	nvstore_nvmem_config.size = 1;
+	nvstore_nvmem_config.dev = dev;
+	nvstore_nvmem_config.bus = &nvstore_nvmem_bus;
+
+	nvmem = nvmem_register(&nvstore_nvmem_config);
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
+static __maybe_unused struct of_device_id nvstore_dt_ids[] = {
+	{ .compatible = "nvstore", },
+	{ },
+};
+
+static struct driver_d nvstore_driver = {
+	.name	= "nvstore",
+	.probe	= nvstore_probe,
+	.of_compatible = DRV_OF_COMPAT(nvstore_dt_ids),
+};
+device_platform_driver(nvstore_driver);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
