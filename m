Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7K-0000Ft-6J
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:15 +0100
Message-Id: <1422430339-11969-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/15] pinctrl: Add MXS pinctrl driver
To: Barebox List <barebox@lists.infradead.org>

This adds a device tree pinctrl driver for MXS.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/Kconfig       |   7 ++
 drivers/pinctrl/Makefile      |   1 +
 drivers/pinctrl/pinctrl-mxs.c | 171 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 179 insertions(+)
 create mode 100644 drivers/pinctrl/pinctrl-mxs.c

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 4cbc167..5c69928 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -37,6 +37,13 @@ comment "OFDEVICE is not enabled."
 comment "Without device tree support PINCTRL won't do anything"
 endif
 
+config PINCTRL_MXS
+	bool "MXS pinctrl"
+	depends on ARCH_MXS
+	default ARCH_MXS
+	help
+	  This pinmux controller is found on i.MX23,28
+
 config PINCTRL_ROCKCHIP
 	select GPIO_GENERIC
 	select MFD_SYSCON
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 724e6d7..af9b30d 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_PINCTRL_AT91) += pinctrl-at91.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V1) += imx-iomux-v1.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) += imx-iomux-v2.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) += imx-iomux-v3.o
+obj-$(CONFIG_PINCTRL_MXS) += pinctrl-mxs.o
 obj-$(CONFIG_PINCTRL_ROCKCHIP) += pinctrl-rockchip.o
 obj-$(CONFIG_PINCTRL_SINGLE) += pinctrl-single.o
 obj-$(CONFIG_PINCTRL_TEGRA20) += pinctrl-tegra20.o
diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
new file mode 100644
index 0000000..ec0aaec
--- /dev/null
+++ b/drivers/pinctrl/pinctrl-mxs.c
@@ -0,0 +1,171 @@
+/*
+ * pinctrl-mxs.c - MXS pinctrl support
+ *
+ * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <stmp-device.h>
+
+struct mxs_pinctrl {
+	void __iomem *base;
+	struct pinctrl_device pinctrl;
+};
+
+#define PINID(bank, pin)	((bank) * 32 + (pin))
+#define MUXID_TO_PINID(m)	PINID((m) >> 12 & 0xf, (m) >> 4 & 0xff)
+#define MUXID_TO_MUXSEL(m)	((m) & 0xf)
+#define PINID_TO_BANK(p)	((p) >> 5)
+#define PINID_TO_PIN(p)		((p) % 32)
+
+static int mxs_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node *np)
+{
+	struct mxs_pinctrl *iomux = container_of(pdev, struct mxs_pinctrl, pinctrl);
+	const __be32 *list;
+	int npins, size, i;
+	u32 val, ma, vol, pull;
+	int ret;
+	int ma_present = 0, vol_present = 0, pull_present = 0;
+
+	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
+
+	list = of_get_property(np, "fsl,pinmux-ids", &size);
+	if (!list)
+		return -EINVAL;
+
+	if (!size || size % 4) {
+		dev_err(iomux->pinctrl.dev, "Invalid fsl,pins property in %s\n",
+				np->full_name);
+		return -EINVAL;
+	}
+
+	npins = size / 4;
+
+	ret = of_property_read_u32(np, "fsl,drive-strength", &ma);
+	if (!ret)
+		ma_present = 1;
+
+	ret = of_property_read_u32(np, "fsl,voltage", &vol);
+	if (!ret)
+		vol_present = 1;
+
+	ret = of_property_read_u32(np, "fsl,pull-up", &pull);
+	if (!ret)
+		pull_present = 1;
+
+	for (i = 0; i < npins; i++) {
+		int muxsel, pinid, bank, pin, shift;
+		void __iomem *reg;
+
+		val = be32_to_cpu(*list++);
+
+		muxsel = MUXID_TO_MUXSEL(val);
+		pinid = MUXID_TO_PINID(val);
+
+		bank = PINID_TO_BANK(pinid);
+		pin = PINID_TO_PIN(pinid);
+		reg = iomux->base + 0x100;
+		reg += bank * 0x20 + pin / 16 * 0x10;
+		shift = pin % 16 * 2;
+
+		writel(0x3 << shift, reg + STMP_OFFSET_REG_CLR);
+		writel(muxsel << shift, reg + STMP_OFFSET_REG_SET);
+
+		dev_dbg(iomux->pinctrl.dev, "pin %d, mux %d, ma: %d, vol: %d, pull: %d\n",
+				pinid, muxsel, ma, vol, pull);
+
+		/* drive */
+		reg = iomux->base + 0x300;
+		reg += bank * 0x40 + pin / 8 * 0x10;
+
+		/* mA */
+		if (ma_present) {
+			shift = pin % 8 * 4;
+			writel(0x3 << shift, reg + STMP_OFFSET_REG_CLR);
+			writel(ma << shift, reg + STMP_OFFSET_REG_SET);
+		}
+
+		/* vol */
+		if (vol_present) {
+			shift = pin % 8 * 4 + 2;
+			if (vol)
+				writel(1 << shift, reg + STMP_OFFSET_REG_SET);
+			else
+				writel(1 << shift, reg + STMP_OFFSET_REG_CLR);
+		}
+
+		/* pull */
+		if (pull_present) {
+			reg = iomux->base + 0x600;
+			reg += bank * 0x10;
+			shift = pin;
+			if (pull)
+				writel(1 << shift, reg + STMP_OFFSET_REG_SET);
+			else
+				writel(1 << shift, reg + STMP_OFFSET_REG_CLR);
+		}
+	}
+
+	return 0;
+}
+
+static struct pinctrl_ops mxs_pinctrl_ops = {
+	.set_state = mxs_pinctrl_set_state,
+};
+
+static int mxs_pinctrl_probe(struct device_d *dev)
+{
+	struct mxs_pinctrl *iomux;
+	int ret = 0;
+
+	iomux = xzalloc(sizeof(*iomux));
+
+	iomux->base = dev_get_mem_region(dev, 0);
+
+	iomux->pinctrl.dev = dev;
+	iomux->pinctrl.ops = &mxs_pinctrl_ops;
+
+	ret = pinctrl_register(&iomux->pinctrl);
+	if (ret)
+		free(iomux);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id mxs_pinctrl_dt_ids[] = {
+	{
+		.compatible = "fsl,imx28-pinctrl",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d mxs_pinctrl_driver = {
+	.name		= "mxs-pinctrl",
+	.probe		= mxs_pinctrl_probe,
+	.of_compatible	= DRV_OF_COMPAT(mxs_pinctrl_dt_ids),
+};
+
+static int mxs_pinctrl_init(void)
+{
+	return platform_driver_register(&mxs_pinctrl_driver);
+}
+postcore_initcall(mxs_pinctrl_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
