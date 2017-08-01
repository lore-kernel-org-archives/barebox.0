Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcTLM-0006Sr-S6
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 09:20:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  1 Aug 2017 11:19:33 +0200
Message-Id: <20170801091934.3133-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20170801091934.3133-1-s.trumtrar@pengutronix.de>
References: <20170801091934.3133-1-s.trumtrar@pengutronix.de>
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
Subject: [RFC PATCH 3/4] drivers: fpga: add socfpga bridges
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Import the SoCFPGA bridges drivers from linux v4.10-rc2.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/fpga/Kconfig                     |   8 ++
 drivers/fpga/Makefile                    |   1 +
 drivers/fpga/socfpga-fpga2sdram-bridge.c | 143 ++++++++++++++++++++++++
 drivers/fpga/socfpga-hps2fpga-bridge.c   | 183 +++++++++++++++++++++++++++++++
 4 files changed, 335 insertions(+)
 create mode 100644 drivers/fpga/socfpga-fpga2sdram-bridge.c
 create mode 100644 drivers/fpga/socfpga-hps2fpga-bridge.c

diff --git a/drivers/fpga/Kconfig b/drivers/fpga/Kconfig
index cd3a5ba42552..77ae52519a50 100644
--- a/drivers/fpga/Kconfig
+++ b/drivers/fpga/Kconfig
@@ -19,6 +19,14 @@ config FPGA_BRIDGE
 	  Say Y here if you want to support bridges connected between host
 	  processors and FPGAs or between FPGAs.
 
+config SOCFPGA_FPGA_BRIDGE
+	tristate "Altera SoCFPGA FPGA Bridges"
+	depends on ARCH_SOCFPGA && FPGA_BRIDGE
+	select RESET_CONTROLLER
+	help
+	  Say Y to enable drivers for FPGA bridges for Altera SOCFPGA
+	  devices.
+
 endif # FPGA
 
 endmenu
diff --git a/drivers/fpga/Makefile b/drivers/fpga/Makefile
index fc71a29d3b33..86178fe7c078 100644
--- a/drivers/fpga/Makefile
+++ b/drivers/fpga/Makefile
@@ -4,3 +4,4 @@
 
 # FPGA Bridge Drivers
 obj-$(CONFIG_FPGA_BRIDGE)		+= fpga-bridge.o
+obj-$(CONFIG_SOCFPGA_FPGA_BRIDGE)	+= socfpga-hps2fpga-bridge.o socfpga-fpga2sdram-bridge.o
diff --git a/drivers/fpga/socfpga-fpga2sdram-bridge.c b/drivers/fpga/socfpga-fpga2sdram-bridge.c
new file mode 100644
index 000000000000..ff48248fb63f
--- /dev/null
+++ b/drivers/fpga/socfpga-fpga2sdram-bridge.c
@@ -0,0 +1,143 @@
+/*
+ * FPGA to SDRAM Bridge Driver for Altera SoCFPGA Devices
+ *
+ *  Copyright (C) 2013-2016 Altera Corporation, All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/*
+ * This driver manages a bridge between an FPGA and the SDRAM used by the ARM
+ * host processor system (HPS).
+ *
+ * The bridge contains 4 read ports, 4 write ports, and 6 command ports.
+ * Reconfiguring these ports requires that no SDRAM transactions occur during
+ * reconfiguration.  The code reconfiguring the ports cannot run out of SDRAM
+ * nor can the FPGA access the SDRAM during reconfiguration.  This driver does
+ * not support reconfiguring the ports.  The ports are configured by code
+ * running out of on chip ram before Linux is started and the configuration
+ * is passed in a handoff register in the system manager.
+ *
+ * This driver supports enabling and disabling of the configured ports, which
+ * allows for safe reprogramming of the FPGA, assuming that the new FPGA image
+ * uses the same port configuration.  Bridges must be disabled before
+ * reprogramming the FPGA and re-enabled after the FPGA has been programmed.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <fpga-bridge.h>
+#include <mfd/syscon.h>
+#include <of_device.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+
+#define SOCFPGA_SDRCTL_ADDR			0xffc25000
+#define ALT_SDR_CTL_FPGAPORTRST_OFST		0x80
+#define ALT_SDR_CTL_FPGAPORTRST_PORTRSTN_MSK	0x00003fff
+#define ALT_SDR_CTL_FPGAPORTRST_RD_SHIFT	0
+#define ALT_SDR_CTL_FPGAPORTRST_WR_SHIFT	4
+#define ALT_SDR_CTL_FPGAPORTRST_CTRL_SHIFT	8
+
+#define SOCFPGA_SYSMGR_ADDR			0xffd08000
+/*
+ * From the Cyclone V HPS Memory Map document:
+ *   These registers are used to store handoff information between the
+ *   preloader and the OS. These 8 registers can be used to store any
+ *   information. The contents of these registers have no impact on
+ *   the state of the HPS hardware.
+ */
+#define SYSMGR_ISWGRP_HANDOFF3          (0x8C)
+
+#define F2S_BRIDGE_NAME "fpga2sdram"
+
+struct alt_fpga2sdram_data {
+	struct device_d *dev;
+	int mask;
+};
+
+static inline int _alt_fpga2sdram_enable_set(struct alt_fpga2sdram_data *priv,
+					     bool enable)
+{
+	int val;
+
+	val = readl(SOCFPGA_SDRCTL_ADDR + ALT_SDR_CTL_FPGAPORTRST_OFST);
+
+	if (enable)
+		val |= priv->mask;
+	else
+		val = 0;
+
+	/* The kernel driver expects this value in this register :-( */
+	writel(priv->mask, SOCFPGA_SYSMGR_ADDR + SYSMGR_ISWGRP_HANDOFF3);
+
+	dev_dbg(priv->dev, "setting fpgaportrst to 0x%08x\n", val);
+
+	return writel(val, SOCFPGA_SDRCTL_ADDR + ALT_SDR_CTL_FPGAPORTRST_OFST);
+}
+
+static int alt_fpga2sdram_enable_set(struct fpga_bridge *bridge, bool enable)
+{
+	return _alt_fpga2sdram_enable_set(bridge->priv, enable);
+}
+
+struct prop_map {
+	char *prop_name;
+	u32 *prop_value;
+	u32 prop_max;
+};
+
+static const struct fpga_bridge_ops altera_fpga2sdram_br_ops = {
+	.enable_set = alt_fpga2sdram_enable_set,
+};
+
+static const struct of_device_id altera_fpga_of_match[] = {
+	{ .compatible = "altr,socfpga-fpga2sdram-bridge" },
+	{},
+};
+
+static int alt_fpga_bridge_probe(struct device_d *dev)
+{
+	struct alt_fpga2sdram_data *priv;
+	int ret = 0;
+
+	priv = xzalloc(sizeof(*priv));
+	if (!priv)
+		return -ENOMEM;
+
+	/* enable all ports for now */
+	priv->mask = 0x3fff;
+
+	priv->dev = dev;
+
+	ret = fpga_bridge_register(dev, F2S_BRIDGE_NAME,
+				   &altera_fpga2sdram_br_ops, priv);
+	if (ret)
+		return ret;
+
+	dev_info(dev, "driver initialized with handoff %08x\n", priv->mask);
+
+	return ret;
+}
+
+static struct driver_d altera_fpga_driver = {
+	.probe = alt_fpga_bridge_probe,
+	.of_compatible = DRV_OF_COMPAT(altera_fpga_of_match),
+};
+
+static int alt_fpga_bridge_init(void)
+{
+	return platform_driver_register(&altera_fpga_driver);
+}
+postcore_initcall(alt_fpga_bridge_init);
diff --git a/drivers/fpga/socfpga-hps2fpga-bridge.c b/drivers/fpga/socfpga-hps2fpga-bridge.c
new file mode 100644
index 000000000000..5850ab0bda10
--- /dev/null
+++ b/drivers/fpga/socfpga-hps2fpga-bridge.c
@@ -0,0 +1,183 @@
+/*
+ * FPGA to/from HPS Bridge Driver for Altera SoCFPGA Devices
+ *
+ *  Copyright (C) 2013-2016 Altera Corporation, All Rights Reserved.
+ *
+ * Includes this patch from the mailing list:
+ *   fpga: altera-hps2fpga: fix HPS2FPGA bridge visibility to L3 masters
+ *   Signed-off-by: Anatolij Gustschin <agust@denx.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/*
+ * This driver manages bridges on a Altera SOCFPGA between the ARM host
+ * processor system (HPS) and the embedded FPGA.
+ *
+ * This driver supports enabling and disabling of the configured ports, which
+ * allows for safe reprogramming of the FPGA, assuming that the new FPGA image
+ * uses the same port configuration.  Bridges must be disabled before
+ * reprogramming the FPGA and re-enabled after the FPGA has been programmed.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <fpga-bridge.h>
+#include <mfd/syscon.h>
+#include <of_device.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+
+#define SOCFPGA_L3_ADDR				0xff800000
+#define ALT_L3_REMAP_OFST			0x0
+#define ALT_L3_REMAP_MPUZERO_MSK		0x00000001
+#define ALT_L3_REMAP_H2F_MSK			0x00000008
+#define ALT_L3_REMAP_LWH2F_MSK			0x00000010
+
+#define HPS2FPGA_BRIDGE_NAME			"hps2fpga"
+#define LWHPS2FPGA_BRIDGE_NAME			"lwhps2fpga"
+#define FPGA2HPS_BRIDGE_NAME			"fpga2hps"
+
+struct altera_hps2fpga_data {
+	struct device_d *dev;
+	const char *name;
+	struct reset_control *bridge_reset;
+	unsigned int remap_mask;
+	struct clk *clk;
+};
+
+/* The L3 REMAP register is write only, so keep a cached value. */
+static unsigned int l3_remap_shadow;
+
+static int _alt_hps2fpga_enable_set(struct altera_hps2fpga_data *priv,
+				    bool enable)
+{
+	int ret;
+
+	/* bring bridge out of reset */
+	if (enable)
+		ret = reset_control_deassert(priv->bridge_reset);
+	else
+		ret = reset_control_assert(priv->bridge_reset);
+	if (ret)
+		return ret;
+
+	/* Allow bridge to be visible to L3 masters or not */
+	if (priv->remap_mask) {
+		l3_remap_shadow |= ALT_L3_REMAP_MPUZERO_MSK;
+
+		if (enable)
+			l3_remap_shadow |= priv->remap_mask;
+		else
+			l3_remap_shadow &= ~priv->remap_mask;
+
+		dev_dbg(priv->dev, "setting L3 visibility to 0x%08x\n",
+			l3_remap_shadow);
+
+		writel(l3_remap_shadow, SOCFPGA_L3_ADDR + ALT_L3_REMAP_OFST);
+	}
+
+	return ret;
+}
+
+static int alt_hps2fpga_enable_set(struct fpga_bridge *bridge, bool enable)
+{
+	return _alt_hps2fpga_enable_set(bridge->priv, enable);
+}
+
+static const struct fpga_bridge_ops altera_hps2fpga_br_ops = {
+	.enable_set = alt_hps2fpga_enable_set,
+};
+
+static struct altera_hps2fpga_data hps2fpga_data  = {
+	.name = HPS2FPGA_BRIDGE_NAME,
+	.remap_mask = ALT_L3_REMAP_H2F_MSK,
+};
+
+static struct altera_hps2fpga_data lwhps2fpga_data  = {
+	.name = LWHPS2FPGA_BRIDGE_NAME,
+	.remap_mask = ALT_L3_REMAP_LWH2F_MSK,
+};
+
+static struct altera_hps2fpga_data fpga2hps_data  = {
+	.name = FPGA2HPS_BRIDGE_NAME,
+};
+
+static const struct of_device_id altera_fpga_of_match[] = {
+	{ .compatible = "altr,socfpga-hps2fpga-bridge",
+	  .data = &hps2fpga_data },
+	{ .compatible = "altr,socfpga-lwhps2fpga-bridge",
+	  .data = &lwhps2fpga_data },
+	{ .compatible = "altr,socfpga-fpga2hps-bridge",
+	  .data = &fpga2hps_data },
+	{ /* sentinel */ },
+};
+
+static int alt_fpga_bridge_probe(struct device_d *dev)
+{
+	struct altera_hps2fpga_data *priv;
+	const struct of_device_id *of_id;
+	u32 enable;
+	int ret;
+
+	of_id = of_match_device(altera_fpga_of_match, dev);
+	priv = (struct altera_hps2fpga_data *)of_id->data;
+
+	priv->bridge_reset = of_reset_control_get(dev->device_node, NULL);
+	if (IS_ERR(priv->bridge_reset)) {
+		dev_err(dev, "Could not get %s reset control\n", priv->name);
+		return PTR_ERR(priv->bridge_reset);
+	}
+
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		dev_err(dev, "no clock specified\n");
+		return PTR_ERR(priv->clk);
+	}
+
+	ret = clk_enable(priv->clk);
+	if (ret) {
+		dev_err(dev, "could not enable clock\n");
+		return -EBUSY;
+	}
+
+	priv->dev = dev;
+
+	if (!of_property_read_u32(dev->device_node, "bridge-enable", &enable)) {
+		if (enable > 1) {
+			dev_warn(dev, "invalid bridge-enable %u > 1\n", enable);
+		} else {
+			dev_info(dev, "%s bridge\n",
+				 (enable ? "enabling" : "disabling"));
+
+			ret = _alt_hps2fpga_enable_set(priv, enable);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return fpga_bridge_register(dev, priv->name, &altera_hps2fpga_br_ops,
+				    priv);
+}
+
+static struct driver_d alt_fpga_bridge_driver = {
+	.probe = alt_fpga_bridge_probe,
+	.of_compatible = DRV_OF_COMPAT(altera_fpga_of_match),
+};
+
+static int alt_fpga_bridge_init(void)
+{
+	return platform_driver_register(&alt_fpga_bridge_driver);
+}
+postcore_initcall(alt_fpga_bridge_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
