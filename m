Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qr-0008GR-SW
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:35 +0000
Received: by mail-pa0-x242.google.com with SMTP id cd13so6761152pac.3
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:42 -0700
Message-Id: <1475505657-898-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/20] i.MX: Add pinctrl driver for VF610
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/Kconfig         |   5 ++
 drivers/pinctrl/Makefile        |   1 +
 drivers/pinctrl/pinctrl-vf610.c | 118 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 124 insertions(+)
 create mode 100644 drivers/pinctrl/pinctrl-vf610.c

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 5c69928..12fff4f 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -77,4 +77,9 @@ config PINCTRL_TEGRA_XUSB
 
 source drivers/pinctrl/mvebu/Kconfig
 
+config PINCTRL_VF610
+	bool
+	default y if ARCH_VF610
+	help
+	  Pinmux controller found on Vybrid VF610 family of SoCs
 endif
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index af9b30d..9450dbb 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -9,5 +9,6 @@ obj-$(CONFIG_PINCTRL_SINGLE) += pinctrl-single.o
 obj-$(CONFIG_PINCTRL_TEGRA20) += pinctrl-tegra20.o
 obj-$(CONFIG_PINCTRL_TEGRA30) += pinctrl-tegra30.o
 obj-$(CONFIG_PINCTRL_TEGRA_XUSB) += pinctrl-tegra-xusb.o
+obj-$(CONFIG_PINCTRL_VF610) += pinctrl-vf610.o
 
 obj-$(CONFIG_ARCH_MVEBU) += mvebu/
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
new file mode 100644
index 0000000..e1d59e9
--- /dev/null
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -0,0 +1,118 @@
+/*
+ * Copyright (c) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
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
+#include <of.h>
+#include <pinctrl.h>
+#include <malloc.h>
+
+enum {
+	PINCTRL_VF610_MUX_LINE_SIZE = 20,
+	PINCTRL_VF610_MUX_SHIFT = 20,
+};
+
+struct pinctrl_vf610 {
+	void __iomem *base;
+	struct pinctrl_device pinctrl;
+};
+
+static int pinctrl_vf610_set_state(struct pinctrl_device *pdev,
+				   struct device_node *np)
+{
+	const __be32 *list;
+	int npins, size, i;
+
+	struct pinctrl_vf610 *iomux =
+		container_of(pdev, struct pinctrl_vf610, pinctrl);
+
+	dev_dbg(pdev->dev, "%s: %s\n", __func__, np->full_name);
+
+	list = of_get_property(np, "fsl,pins", &size);
+	if (!list)
+		return -EINVAL;
+
+	if (!size || size % PINCTRL_VF610_MUX_LINE_SIZE) {
+		dev_err(pdev->dev, "Invalid fsl,pins property in %s\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	npins = size / PINCTRL_VF610_MUX_LINE_SIZE;
+
+	for (i = 0; i < npins; i++) {
+		u32 mux_reg   = be32_to_cpu(*list++);
+		u32 input_reg = be32_to_cpu(*list++);
+		u32 mux_val   = be32_to_cpu(*list++);
+		u32 input_val = be32_to_cpu(*list++);
+		u32 conf_val  = be32_to_cpu(*list++);
+
+		writel(mux_val << PINCTRL_VF610_MUX_SHIFT | conf_val,
+		       iomux->base + mux_reg);
+
+		if (input_reg)
+			writel(input_val, iomux->base + input_reg);
+	}
+
+	return 0;
+}
+
+static struct pinctrl_ops pinctrl_vf610_ops = {
+	.set_state = pinctrl_vf610_set_state,
+};
+
+static int pinctrl_vf610_probe(struct device_d *dev)
+{
+	int ret;
+	struct resource *io;
+	struct pinctrl_vf610 *iomux;
+
+	iomux = xzalloc(sizeof(*iomux));
+
+	io = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(io))
+		return PTR_ERR(io);
+
+	iomux->base = IOMEM(io->start);
+	iomux->pinctrl.dev = dev;
+	iomux->pinctrl.ops = &pinctrl_vf610_ops;
+
+	ret = pinctrl_register(&iomux->pinctrl);
+	if (ret)
+		free(iomux);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id pinctrl_vf610_dt_ids[] = {
+	{ .compatible = "fsl,vf610-iomuxc", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d pinctrl_vf610_driver = {
+	.name		= "vf610-pinctrl",
+	.probe		= pinctrl_vf610_probe,
+	.of_compatible	= DRV_OF_COMPAT(pinctrl_vf610_dt_ids),
+};
+
+static int pinctrl_vf610_init(void)
+{
+	return platform_driver_register(&pinctrl_vf610_driver);
+}
+postcore_initcall(pinctrl_vf610_init);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
