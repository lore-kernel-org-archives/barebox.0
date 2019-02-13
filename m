Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtpzy-0001lB-W8
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 08:34:32 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 13 Feb 2019 09:34:22 +0100
Message-Id: <1550046868-19264-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 1/7] drivers: bus: Add ti-sysc bus driver
To: barebox@lists.infradead.org

Adds minimal support for the sysc interconnect target module found
on many TI SoCs. With this device tree includes have been rearagned.
We need the driver to probe the child devices of the bus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
Changes in v2:
- set driver in Kconfig to default y
- Use postcore_platform_driver() call
- Use global of_default_bus_match_table() instead of local table

 drivers/bus/Kconfig   |  8 ++++++++
 drivers/bus/Makefile  |  1 +
 drivers/bus/ti-sysc.c | 37 +++++++++++++++++++++++++++++++++++++
 3 files changed, 46 insertions(+)
 create mode 100644 drivers/bus/ti-sysc.c

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 202df59762e8..219982d878a8 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -6,6 +6,14 @@ config BUS_OMAP_GPMC
 	depends on OMAP_GPMC
 	bool "TI OMAP/AM33xx GPMC support"
 
+config TI_SYSC
+	depends on ARCH_OMAP
+	bool "TI sysc interconnect target module driver"
+	default y
+	help
+	  Generic driver for Texas Instruments interconnect target module
+	  found on many TI SoCs.
+
 config IMX_WEIM
 	depends on ARCH_IMX
 	bool "i.MX WEIM driver"
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 4b7aa888aba8..ba5cee40636b 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_BUS_OMAP_GPMC)	+= omap-gpmc.o
 obj-$(CONFIG_IMX_WEIM)		+= imx-weim.o
 obj-$(CONFIG_MVEBU_MBUS)	+= mvebu-mbus.o
+obj-$(CONFIG_TI_SYSC)		+= ti-sysc.o
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
new file mode 100644
index 000000000000..af52d839bdd5
--- /dev/null
+++ b/drivers/bus/ti-sysc.c
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 Phytec Messtechnik GmbH, Teresa Remmet <t.remmet@phytec.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <linux/err.h>
+
+static int ti_sysc_probe(struct device_d *dev)
+{
+	int ret;
+
+	ret = of_platform_populate(dev->device_node,
+					of_default_bus_match_table, dev);
+	if (ret)
+		dev_err(dev, "%s fail to create devices.\n",
+					dev->device_node->full_name);
+	return ret;
+};
+
+static struct of_device_id ti_sysc_dt_ids[] = {
+	{ .compatible = "ti,sysc-omap4",},
+	{ .compatible = "ti,sysc-omap4-simple",},
+	{ .compatible = "ti,sysc-omap4-timer",},
+	{ .compatible = "ti,sysc-omap2",},
+	{ },
+};
+
+static struct driver_d ti_sysc_driver = {
+	.name = "ti-sysc",
+	.probe = ti_sysc_probe,
+	.of_compatible = DRV_OF_COMPAT(ti_sysc_dt_ids),
+};
+
+postcore_platform_driver(ti_sysc_driver);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
