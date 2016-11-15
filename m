Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6ZjU-0005wo-4f
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 09:08:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Nov 2016 10:08:21 +0100
Message-Id: <20161115090821.18106-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: Add src fixup
To: Barebox List <barebox@lists.infradead.org>

Some boards or SoCs need the SRC_SCR[WARM_RESET_ENABLE] bit cleared,
otherwise they won't come up after a watchdog reset. This was observed
on one i.MX6ul based custom board. The Linux Kernel does the same since
2012: 0575fb7 ARM: 7198/1: arm/imx6: add restart support for imx6q.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig  |  4 ++++
 arch/arm/mach-imx/Makefile |  1 +
 arch/arm/mach-imx/src.c    | 57 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/reset/Kconfig      |  4 ++++
 4 files changed, 66 insertions(+)
 create mode 100644 arch/arm/mach-imx/src.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d571faa..5eec639 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -81,6 +81,10 @@ config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 	depends on MTD_WRITE
 	default y
 
+config RESET_IMX_SRC
+	bool "i.MX SRC support"
+	default y if ARCH_IMX6 || ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53
+
 comment "Freescale i.MX System-on-Chip"
 
 config ARCH_IMX1
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 9922fed..22d903c 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -25,5 +25,6 @@ obj-y += devices.o imx.o
 obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
+obj-$(CONFIG_RESET_IMX_SRC) += src.o
 lwl-y += cpu_init.o
 pbl-y += xload-spi.o xload-esdhc.o xload-common.o
diff --git a/arch/arm/mach-imx/src.c b/arch/arm/mach-imx/src.c
new file mode 100644
index 0000000..73350d1
--- /dev/null
+++ b/arch/arm/mach-imx/src.c
@@ -0,0 +1,57 @@
+/*
+ * Copyright 2016 Sascha Hauer <s.hauer@pengutronix.de>
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
+
+#define SRC_SCR		0x0
+
+#define SCR_WARM_RESET_ENABLE	BIT(0)
+
+static int imx_src_reset_probe(struct device_d *dev)
+{
+	struct resource *res;
+	u32 val;
+	void __iomem *membase;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	membase = IOMEM(res->start);
+
+	/*
+	 * Generate cold reset for warm reset sources. Needed for
+	 * some boards to come up properly after reset.
+	 */
+	val = readl(membase + SRC_SCR);
+	val &= ~SCR_WARM_RESET_ENABLE;
+	writel(val, membase + SRC_SCR);
+
+	return 0;
+}
+
+static const struct of_device_id imx_src_dt_ids[] = {
+	{ .compatible = "fsl,imx51-src", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d imx_src_reset_driver = {
+	.name = "imx-src",
+	.probe	= imx_src_reset_probe,
+	.of_compatible	= DRV_OF_COMPAT(imx_src_dt_ids),
+};
+
+static int imx_src_reset_init(void)
+{
+	return platform_driver_register(&imx_src_reset_driver);
+}
+postcore_initcall(imx_src_reset_init);
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index c9d04f7..71a13b5 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -11,3 +11,7 @@ menuconfig RESET_CONTROLLER
 	  via GPIOs or SoC-internal reset controller modules.
 
 	  If unsure, say no.
+
+config RESET_IMX_SRC
+	bool "i.MX SRC support"
+	default y if ARCH_IMX6 || ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
