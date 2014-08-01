Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDCtw-0007YF-2M
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:29:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 15:29:09 +0200
Message-Id: <1406899755-8288-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
References: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] ARM: AM33xx: Add SDRAM size detection
To: barebox@lists.infradead.org

This adds a function which reads back the SDRAM controller settings.
This is used in a AM33xx specific barebox entry function and a
SDRAM driver which registers a SDRAM memory bank.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile                      |  1 +
 arch/arm/mach-omap/am33xx_generic.c              | 56 ++++++++++++++++++++++++
 arch/arm/mach-omap/am33xx_scrm.c                 | 51 +++++++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |  2 +
 4 files changed, 110 insertions(+)
 create mode 100644 arch/arm/mach-omap/am33xx_scrm.c

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index c9b6f4b..0ebfae7 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -24,6 +24,7 @@ pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
+obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 606e391..71c528c 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <io.h>
 #include <net.h>
+#include <asm/barebox-arm.h>
 #include <mach/am33xx-silicon.h>
 #include <mach/am33xx-clock.h>
 #include <mach/generic.h>
@@ -318,6 +319,61 @@ void am33xx_config_sdram(const struct am33xx_emif_regs *regs)
 	writel(regs->sdram_config, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
 }
 
+/**
+ * am335x_sdram_size - read back SDRAM size from sdram_config register
+ *
+ * @return: The SDRAM size
+ */
+unsigned long am335x_sdram_size(void)
+{
+	int rows, cols, width, banks;
+	unsigned long size;
+	uint32_t sdram_config = readl(CM_EMIF_SDRAM_CONFIG);
+
+	rows = ((sdram_config >> 7) & 0x7) + 9;
+	cols = (sdram_config & 0x7) + 8;
+
+	switch ((sdram_config >> 14) & 0x3) {
+	case 0:
+		width = 4;
+		break;
+	case 1:
+		width = 2;
+		break;
+	default:
+		return 0;
+	}
+
+	switch ((sdram_config >> 4) & 0x7) {
+	case 0:
+		banks = 1;
+		break;
+	case 1:
+		banks = 2;
+		break;
+	case 2:
+		banks = 4;
+		break;
+	case 3:
+		banks = 8;
+		break;
+	default:
+		return 0;
+	}
+
+	size = (1 << rows) * (1 << cols) * banks * width;
+
+	debug("%s: sdram_config: 0x%08x cols: %2d rows: %2d width: %2d banks: %2d size: 0x%08lx\n",
+			__func__, sdram_config, cols, rows, width, banks, size);
+
+	return size;
+}
+
+void __noreturn am335x_barebox_entry(void *boarddata)
+{
+	barebox_arm_entry(0x80000000, am335x_sdram_size(), boarddata);
+}
+
 void am33xx_config_io_ctrl(int ioctrl)
 {
 	writel(ioctrl, AM33XX_DDR_CMD0_IOCTRL);
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
new file mode 100644
index 0000000..67529f8
--- /dev/null
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -0,0 +1,51 @@
+/*
+ * (C) Copyright 2014 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <io.h>
+#include <errno.h>
+#include <sizes.h>
+#include <init.h>
+#include <of.h>
+#include <asm/barebox-arm.h>
+#include <asm/memory.h>
+#include <mach/am33xx-silicon.h>
+
+static int am33xx_scrm_probe(struct device_d *dev)
+{
+	arm_add_mem_device("ram0", 0x80000000, am335x_sdram_size());
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id am33xx_scrm_dt_ids[] = {
+	{
+		.compatible = "ti,am3-scrm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d am33xx_scrm_driver = {
+	.name   = "am33xx-scrm",
+	.probe  = am33xx_scrm_probe,
+	.of_compatible = DRV_OF_COMPAT(am33xx_scrm_dt_ids),
+};
+
+static int am33xx_scrm_init(void)
+{
+	return platform_driver_register(&am33xx_scrm_driver);
+}
+
+mem_initcall(am33xx_scrm_init);
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 20b8e81..ceca10a 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -237,5 +237,7 @@ void am33xx_config_ddr_data(const struct am33xx_ddr_data *data, int macronr);
 void am335x_sdram_init(int ioctrl, const struct am33xx_cmd_control *cmd_ctrl,
 			const struct am33xx_emif_regs *emif_regs,
 			const struct am33xx_ddr_data *ddr_data);
+unsigned long am335x_sdram_size(void);
+void am335x_barebox_entry(void *boarddata);
 
 #endif
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
