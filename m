Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Fu-4u
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:46 +0100
Message-Id: <1385131741-28280-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/17] pinctrl: Add pinctrl-single driver
To: barebox@lists.infradead.org

Based on the kernel pinctrl-single driver. This one is just enough
to make OMAP/AM33xx work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/Kconfig          |   3 +
 drivers/pinctrl/Makefile         |   1 +
 drivers/pinctrl/pinctrl-single.c | 166 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 drivers/pinctrl/pinctrl-single.c

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 58397a0..8257586 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -23,6 +23,9 @@ config PINCTRL_IMX_IOMUX_V3
 	help
 	  This iomux controller is found on i.MX25,35,51,53,6.
 
+config PINCTRL_SINGLE
+	bool "pinctrl single"
+
 config PINCTRL_TEGRA20
 	select PINCTRL
 	bool
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 169ed18..b3b0fa9 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -2,4 +2,5 @@ obj-$(CONFIG_PINCTRL)	+= pinctrl.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V1) += imx-iomux-v1.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) += imx-iomux-v2.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) += imx-iomux-v3.o
+obj-$(CONFIG_PINCTRL_SINGLE) += pinctrl-single.o
 obj-$(CONFIG_PINCTRL_TEGRA20) += pinctrl-tegra20.o
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
new file mode 100644
index 0000000..5c60c70
--- /dev/null
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -0,0 +1,166 @@
+/*
+ * pinctrl-single - Generic device tree based pinctrl driver for one
+ *                  register per pin type pinmux controllers
+ *
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <pinctrl.h>
+#include <malloc.h>
+
+struct pinctrl_single {
+	void __iomem *base;
+	struct pinctrl_device pinctrl;
+	unsigned (*read)(void __iomem *reg);
+	void (*write)(unsigned val, void __iomem *reg);
+	unsigned width;
+};
+
+static unsigned __maybe_unused pcs_readb(void __iomem *reg)
+{
+	return readb(reg);
+}
+
+static unsigned __maybe_unused pcs_readw(void __iomem *reg)
+{
+	return readw(reg);
+}
+
+static unsigned __maybe_unused pcs_readl(void __iomem *reg)
+{
+	return readl(reg);
+}
+
+static void __maybe_unused pcs_writeb(unsigned val, void __iomem *reg)
+{
+	writeb(val, reg);
+}
+
+static void __maybe_unused pcs_writew(unsigned val, void __iomem *reg)
+{
+	writew(val, reg);
+}
+
+static void __maybe_unused pcs_writel(unsigned val, void __iomem *reg)
+{
+	writel(val, reg);
+}
+
+static int pcs_set_state(struct pinctrl_device *pdev, struct device_node *np)
+{
+	struct pinctrl_single *pcs = container_of(pdev, struct pinctrl_single, pinctrl);
+	unsigned size = 0, index = 0;
+	const __be32 *mux;
+
+	dev_dbg(pcs->pinctrl.dev, "set state: %s\n", np->full_name);
+
+	mux = of_get_property(np, "pinctrl-single,pins", &size);
+
+	size /= sizeof(*mux);	/* Number of elements in array */
+
+	if (!mux || !size || (size & 1)) {
+		dev_err(pcs->pinctrl.dev, "bad data for mux %s\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	while (index < size) {
+		unsigned offset, val;
+
+		offset = be32_to_cpup(mux + index++);
+		val = be32_to_cpup(mux + index++);
+
+		pcs->write(val, pcs->base + offset);
+	}
+
+	return 0;
+}
+
+static struct pinctrl_ops pcs_ops = {
+	.set_state = pcs_set_state,
+};
+
+static int pcs_probe(struct device_d *dev)
+{
+	struct pinctrl_single *pcs;
+	struct device_node *np = dev->device_node;
+	int ret = 0;
+
+	pcs = xzalloc(sizeof(*pcs));
+	pcs->base = dev_request_mem_region(dev, 0);
+	pcs->pinctrl.dev = dev;
+	pcs->pinctrl.ops = &pcs_ops;
+
+	ret = of_property_read_u32(np, "pinctrl-single,register-width",
+				   &pcs->width);
+	if (ret) {
+		dev_dbg(dev, "no pinctrl-single,register-width property\n");
+		goto out;
+	}
+
+	switch (pcs->width) {
+	case 8:
+		pcs->read = pcs_readb;
+		pcs->write = pcs_writeb;
+		break;
+	case 16:
+		pcs->read = pcs_readw;
+		pcs->write = pcs_writew;
+		break;
+	case 32:
+		pcs->read = pcs_readl;
+		pcs->write = pcs_writel;
+		break;
+	default:
+		ret = -EINVAL;
+		dev_dbg(dev, "invalid register width: %d\n", pcs->width);
+		goto out;
+	}
+
+	ret = pinctrl_register(&pcs->pinctrl);
+	if (ret)
+		goto out;
+
+	return 0;
+
+out:
+	free(pcs);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id pcs_dt_ids[] = {
+	{
+		.compatible = "pinctrl-single",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d pcs_driver = {
+	.name		= "pinctrl-single",
+	.probe		= pcs_probe,
+	.of_compatible	= DRV_OF_COMPAT(pcs_dt_ids),
+};
+
+static int pcs_init(void)
+{
+	return platform_driver_register(&pcs_driver);
+}
+postcore_initcall(pcs_init);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
