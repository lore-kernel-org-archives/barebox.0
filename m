Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUY4h-0001mR-NW
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 07:55:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Apr 2013 09:55:27 +0200
Message-Id: <1366703729-1258-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366703729-1258-1-git-send-email-s.hauer@pengutronix.de>
References: <1366703729-1258-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] pinctrl: switch i.MX iomux-v3 support to pinctrl
To: barebox@lists.infradead.org

This switches the iomux-v3 (found on i.MX25,35,51,53,6) to pinctrl
support. The old SoC specific API is kept for compatibility. The
pinctrl devicetree support is enabled automatically when OFDEVICE
support is available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig      |   5 +
 arch/arm/mach-imx/Makefile     |  10 +-
 arch/arm/mach-imx/iomux-v3.c   | 107 ---------------------
 drivers/pinctrl/Kconfig        |   6 ++
 drivers/pinctrl/Makefile       |   1 +
 drivers/pinctrl/imx-iomux-v3.c | 212 +++++++++++++++++++++++++++++++++++++++++
 6 files changed, 229 insertions(+), 112 deletions(-)
 delete mode 100644 arch/arm/mach-imx/iomux-v3.c
 create mode 100644 drivers/pinctrl/imx-iomux-v3.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8ddec9d..1c3199f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -174,6 +174,7 @@ config ARCH_IMX25
 	bool "i.MX25"
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
+	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX27
 	bool "i.MX27"
@@ -188,21 +189,25 @@ config ARCH_IMX35
 	bool "i.MX35"
 	select CPU_V6
 	select ARCH_HAS_FEC_IMX
+	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX51
 	bool "i.MX51"
 	select CPU_V7
 	select ARCH_HAS_FEC_IMX
+	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX53
 	bool "i.MX53"
 	select CPU_V7
 	select ARCH_HAS_FEC_IMX
+	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX6
 	bool "i.MX6"
 	select ARCH_HAS_FEC_IMX
 	select CPU_V7
+	select PINCTRL_IMX_IOMUX_V3
 
 endchoice
 
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index ff8f15b..c98a302 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,14 +1,14 @@
 obj-y += clocksource.o gpio.o
 obj-$(CONFIG_ARCH_IMX1)  += imx1.o  iomux-v1.o clk-imx1.o
-obj-$(CONFIG_ARCH_IMX25) += imx25.o iomux-v3.o clk-imx25.o
+obj-$(CONFIG_ARCH_IMX25) += imx25.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += imx21.o iomux-v1.o clk-imx21.o
 obj-$(CONFIG_ARCH_IMX27) += imx27.o iomux-v1.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += imx31.o iomux-v2.o clk-imx31.o
-obj-$(CONFIG_ARCH_IMX35) += imx35.o iomux-v3.o clk-imx35.o
-obj-$(CONFIG_ARCH_IMX51) += imx51.o iomux-v3.o imx5.o clk-imx5.o
-obj-$(CONFIG_ARCH_IMX53) += imx53.o iomux-v3.o imx5.o clk-imx5.o esdctl-v4.o
+obj-$(CONFIG_ARCH_IMX35) += imx35.o clk-imx35.o
+obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o clk-imx5.o
+obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o clk-imx5.o esdctl-v4.o
 pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
-obj-$(CONFIG_ARCH_IMX6) += imx6.o iomux-v3.o usb-imx6.o clk-imx6.o
+obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o clk-imx6.o
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
deleted file mode 100644
index 8a6064d..0000000
--- a/arch/arm/mach-imx/iomux-v3.c
+++ /dev/null
@@ -1,107 +0,0 @@
-/*
- * Copyright 2004-2006 Freescale Semiconductor, Inc. All Rights Reserved.
- * Copyright (C) 2008 by Sascha Hauer <kernel@pengutronix.de>
- * Copyright (C) 2009 by Jan Weitzel Phytec Messtechnik GmbH,
- *                       <armlinux@phytec.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/iomux-v3.h>
-
-static void __iomem *base;
-
-/*
- * configures a single pad in the iomuxer
- */
-int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
-{
-	u32 mux_ctrl_ofs = (pad & MUX_CTRL_OFS_MASK) >> MUX_CTRL_OFS_SHIFT;
-	u32 mux_mode = (pad & MUX_MODE_MASK) >> MUX_MODE_SHIFT;
-	u32 sel_input_ofs = (pad & MUX_SEL_INPUT_OFS_MASK) >> MUX_SEL_INPUT_OFS_SHIFT;
-	u32 sel_input = (pad & MUX_SEL_INPUT_MASK) >> MUX_SEL_INPUT_SHIFT;
-	u32 pad_ctrl_ofs = (pad & MUX_PAD_CTRL_OFS_MASK) >> MUX_PAD_CTRL_OFS_SHIFT;
-	u32 pad_ctrl = (pad & MUX_PAD_CTRL_MASK) >> MUX_PAD_CTRL_SHIFT;
-
-	if (!base)
-		return -EINVAL;
-
-	debug("%s: mux 0x%08x -> 0x%04x pad: 0x%08x -> 0x%04x sel_inp: 0x%08x -> 0x%04x\n",
-			__func__, mux_mode, mux_ctrl_ofs, pad_ctrl, pad_ctrl_ofs, sel_input,
-			sel_input_ofs);
-
-	if (mux_ctrl_ofs)
-		__raw_writel(mux_mode, base + mux_ctrl_ofs);
-
-	if (sel_input_ofs)
-		__raw_writel(sel_input, base + sel_input_ofs);
-
-	if (!(pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
-		__raw_writel(pad_ctrl, base + pad_ctrl_ofs);
-
-	return 0;
-}
-EXPORT_SYMBOL(mxc_iomux_v3_setup_pad);
-
-
-int mxc_iomux_v3_setup_multiple_pads(iomux_v3_cfg_t *pad_list, unsigned count)
-{
-	iomux_v3_cfg_t *p = pad_list;
-	int i;
-	int ret;
-
-	for (i = 0; i < count; i++) {
-		ret = mxc_iomux_v3_setup_pad(*p);
-		if (ret)
-			return ret;
-		p++;
-	}
-	return 0;
-}
-EXPORT_SYMBOL(mxc_iomux_v3_setup_multiple_pads);
-
-static int imx_iomux_probe(struct device_d *dev)
-{
-	base = dev_request_mem_region(dev, 0);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id imx_iomux_dt_ids[] = {
-	{
-		.compatible = "fsl,imx35-iomux",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct platform_device_id imx_iomux_ids[] = {
-	{
-		.name = "imx35-iomux",
-	}, {
-		/* sentinel */
-	},
-};
-
-static struct driver_d imx_iomux_driver = {
-	.name = "imx-iomuxv3",
-	.probe = imx_iomux_probe,
-	.of_compatible = DRV_OF_COMPAT(imx_iomux_dt_ids),
-	.id_table = imx_iomux_ids,
-};
-
-static int imx_iomux_init(void)
-{
-	return platform_driver_register(&imx_iomux_driver);
-}
-postcore_initcall(imx_iomux_init);
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 05adf59..6ce01bf 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -9,4 +9,10 @@ config PINCTRL
 	  from the devicetree. Legacy drivers here may not need this core
 	  support but instead provide their own SoC specific APIs
 
+config PINCTRL_IMX_IOMUX_V3
+	select PINCTRL if OFDEVICE
+	bool "i.MX iomux v3"
+	help
+	  This iomux controller is found on i.MX25,35,51,53,6.
+
 endmenu
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 59f096a..134c889 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_PINCTRL)	+= pinctrl.o
+obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) += imx-iomux-v3.o
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
new file mode 100644
index 0000000..3ff3c15
--- /dev/null
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -0,0 +1,212 @@
+/*
+ * imx-iomux-v3.c - i.MX iomux-v3 pinctrl support
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
+#include <mach/iomux-v3.h>
+
+struct imx_iomux_v3 {
+	void __iomem *base;
+	struct pinctrl_device pinctrl;
+};
+
+static void __iomem *iomuxv3_base;
+static struct device_d *iomuxv3_dev;
+
+static void imx_iomuxv3_setup_single(void __iomem *base, struct device_d *dev,
+		u32 mux_reg, u32 conf_reg, u32 input_reg,
+		u32 mux_val, u32 conf_val, u32 input_val)
+{
+	dev_dbg(dev,
+		"mux: 0x%08x -> 0x%04x, conf: 0x%08x -> 0x%04x input: 0x%08x -> 0x%04x\n",
+		mux_val, mux_reg, conf_val, conf_reg, input_val, input_reg);
+
+	if (mux_reg)
+		writel(mux_val, base + mux_reg);
+	if (conf_reg)
+		writel(conf_val, base + conf_reg);
+	if (input_reg)
+		writel(input_val, base + input_reg);
+}
+
+/*
+ * configures a single pad in the iomuxer
+ */
+int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
+{
+	u32 mux_reg = (pad & MUX_CTRL_OFS_MASK) >> MUX_CTRL_OFS_SHIFT;
+	u32 mux_val = (pad & MUX_MODE_MASK) >> MUX_MODE_SHIFT;
+	u32 input_reg = (pad & MUX_SEL_INPUT_OFS_MASK) >> MUX_SEL_INPUT_OFS_SHIFT;
+	u32 input_val = (pad & MUX_SEL_INPUT_MASK) >> MUX_SEL_INPUT_SHIFT;
+	u32 conf_reg = (pad & MUX_PAD_CTRL_OFS_MASK) >> MUX_PAD_CTRL_OFS_SHIFT;
+	u32 conf_val = (pad & MUX_PAD_CTRL_MASK) >> MUX_PAD_CTRL_SHIFT;
+
+	if (!iomuxv3_base)
+		return -EINVAL;
+
+	if (conf_val & NO_PAD_CTRL)
+		conf_reg = 0;
+
+	imx_iomuxv3_setup_single(iomuxv3_base, iomuxv3_dev,
+			mux_reg, conf_reg, input_reg,
+			mux_val, conf_val, input_val);
+
+	return 0;
+}
+EXPORT_SYMBOL(mxc_iomux_v3_setup_pad);
+
+
+int mxc_iomux_v3_setup_multiple_pads(iomux_v3_cfg_t *pad_list, unsigned count)
+{
+	iomux_v3_cfg_t *p = pad_list;
+	int i;
+	int ret;
+
+	for (i = 0; i < count; i++) {
+		ret = mxc_iomux_v3_setup_pad(*p);
+		if (ret)
+			return ret;
+		p++;
+	}
+	return 0;
+}
+EXPORT_SYMBOL(mxc_iomux_v3_setup_multiple_pads);
+
+/*
+ * Each pin represented in fsl,pins consists of 5 u32 PIN_FUNC_ID and
+ * 1 u32 CONFIG, so 24 types in total for each pin.
+ */
+#define FSL_PIN_SIZE 24
+
+#define IMX_DT_NO_PAD_CTL	(1 << 31)
+#define IMX_PAD_SION		(1 << 30)
+
+#define IOMUXC_CONFIG_SION	(0x1 << 4)
+
+static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_node *np)
+{
+	struct imx_iomux_v3 *iomux = container_of(pdev, struct imx_iomux_v3, pinctrl);
+	const __be32 *list;
+	int npins, size, i;
+
+	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
+
+	list = of_get_property(np, "fsl,pins", &size);
+	if (!list)
+		return -EINVAL;
+
+
+	if (!size || size % FSL_PIN_SIZE) {
+		dev_err(iomux->pinctrl.dev, "Invalid fsl,pins property\n");
+		return -EINVAL;
+	}
+
+	npins = size / FSL_PIN_SIZE;
+
+	for (i = 0; i < npins; i++) {
+		u32 mux_reg = be32_to_cpu(*list++);
+		u32 conf_reg = be32_to_cpu(*list++);
+		u32 input_reg = be32_to_cpu(*list++);
+		u32 mux_val = be32_to_cpu(*list++);
+		u32 input_val = be32_to_cpu(*list++);
+		u32 conf_val = be32_to_cpu(*list++);
+
+		if (conf_val & IMX_PAD_SION)
+			mux_val |= IOMUXC_CONFIG_SION;
+
+		if (conf_val & IMX_DT_NO_PAD_CTL)
+			conf_reg = 0;
+
+		imx_iomuxv3_setup_single(iomux->base, iomux->pinctrl.dev,
+				mux_reg, conf_reg, input_reg,
+				mux_val, conf_val, input_val);
+	}
+
+	return 0;
+}
+
+static struct pinctrl_ops imx_iomux_v3_ops = {
+	.set_state = imx_iomux_v3_set_state,
+};
+
+static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
+{
+	struct imx_iomux_v3 *iomux;
+	int ret;
+
+	iomux = xzalloc(sizeof(*iomux));
+
+	iomux->base = base;
+
+	iomux->pinctrl.dev = dev;
+	iomux->pinctrl.ops = &imx_iomux_v3_ops;
+
+	ret = pinctrl_register(&iomux->pinctrl);
+	if (ret)
+		free(iomux);
+
+	return ret;
+}
+
+static int imx_iomux_v3_probe(struct device_d *dev)
+{
+	int ret = 0;
+
+	if (iomuxv3_base)
+		return -EBUSY;
+
+	iomuxv3_base = dev_request_mem_region(dev, 0);
+	iomuxv3_dev = dev;
+
+	if (IS_ENABLED(CONFIG_PINCTRL))
+		ret = imx_pinctrl_dt(dev, iomuxv3_base);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
+	{
+		.compatible = "fsl,imx25-iomuxc",
+	}, {
+		.compatible = "fsl,imx35-iomuxc",
+	}, {
+		.compatible = "fsl,imx51-iomuxc",
+	}, {
+		.compatible = "fsl,imx53-iomuxc",
+	}, {
+		.compatible = "fsl,imx6q-iomuxc",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx_iomux_v3_driver = {
+	.name		= "imx-iomuxv3",
+	.probe		= imx_iomux_v3_probe,
+	.of_compatible	= DRV_OF_COMPAT(imx_iomux_v3_dt_ids),
+};
+
+static int imx_iomux_v3_init(void)
+{
+	return platform_driver_register(&imx_iomux_v3_driver);
+}
+postcore_initcall(imx_iomux_v3_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
