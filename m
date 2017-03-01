Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5IN-00048U-95
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:32:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5I1-0005ON-TN
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:31:37 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:31:32 +0100
Message-Id: <20170301143137.11570-4-l.stach@pengutronix.de>
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/9] ARM: rpi: convert watchdog/reset to regular driver
To: barebox@lists.infradead.org

This way it can be probed from DT later on.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c |  1 +
 arch/arm/mach-bcm283x/Makefile            |  2 +-
 arch/arm/mach-bcm283x/core.c              | 17 -------
 arch/arm/mach-bcm283x/include/mach/core.h |  5 +++
 arch/arm/mach-bcm283x/include/mach/wd.h   |  6 +--
 arch/arm/mach-bcm283x/wd.c                | 75 +++++++++++++++++++++++++++++++
 6 files changed, 85 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/mach-bcm283x/wd.c

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index d0f4fcb3bad9..331e6873bc49 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -326,6 +326,7 @@ static int rpi_env_init(void)
 static int rpi_devices_init(void)
 {
 	rpi_model_init();
+	bcm2835_register_wd();
 	bcm2835_register_mci();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
diff --git a/arch/arm/mach-bcm283x/Makefile b/arch/arm/mach-bcm283x/Makefile
index 940f98cbce76..96ea69365e50 100644
--- a/arch/arm/mach-bcm283x/Makefile
+++ b/arch/arm/mach-bcm283x/Makefile
@@ -1 +1 @@
-obj-y += core.o mbox.o
+obj-y += core.o mbox.o wd.o
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index 64f37813883a..3319ad63c3d7 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -18,7 +18,6 @@
 
 #include <common.h>
 #include <init.h>
-#include <restart.h>
 
 #include <linux/clk.h>
 #include <linux/clkdev.h>
@@ -29,7 +28,6 @@
 #include <linux/sizes.h>
 
 #include <mach/platform.h>
-#include <mach/wd.h>
 #include <mach/core.h>
 #include <linux/amba/bus.h>
 
@@ -64,25 +62,10 @@ void bcm2835_add_device_sdram(u32 size)
 
 	arm_add_mem_device("ram0", BCM2835_SDRAM_BASE, size);
 }
-#define RESET_TIMEOUT 10
-
-static void __noreturn bcm2835_restart_soc(struct restart_handler *rst)
-{
-	uint32_t rstc;
-
-	rstc = readl(PM_RSTC);
-	rstc &= ~PM_RSTC_WRCFG_SET;
-	rstc |= PM_RSTC_WRCFG_FULL_RESET;
-	writel(PM_PASSWORD | RESET_TIMEOUT, PM_WDOG);
-	writel(PM_PASSWORD | rstc, PM_RSTC);
-
-	hang();
-}
 
 static int bcm2835_dev_init(void)
 {
 	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
-	restart_handler_register_fn(bcm2835_restart_soc);
 	return 0;
 }
 coredevice_initcall(bcm2835_dev_init);
diff --git a/arch/arm/mach-bcm283x/include/mach/core.h b/arch/arm/mach-bcm283x/include/mach/core.h
index ce54d38707d8..5edd99efa25f 100644
--- a/arch/arm/mach-bcm283x/include/mach/core.h
+++ b/arch/arm/mach-bcm283x/include/mach/core.h
@@ -37,5 +37,10 @@ static void inline bcm2835_register_mbox(void)
 	add_generic_device("bcm2835_mbox", 0, NULL, BCM2835_MBOX_BASE, 0x40,
 			   IORESOURCE_MEM, NULL);
 }
+static void inline bcm2835_register_wd(void)
+{
+	add_generic_device("bcm2835_wd", 0, NULL, BCM2835_PM_BASE, 0x28,
+			   IORESOURCE_MEM, NULL);
+}
 
 #endif
diff --git a/arch/arm/mach-bcm283x/include/mach/wd.h b/arch/arm/mach-bcm283x/include/mach/wd.h
index ad8b762d9631..cdd22d48c07b 100644
--- a/arch/arm/mach-bcm283x/include/mach/wd.h
+++ b/arch/arm/mach-bcm283x/include/mach/wd.h
@@ -21,9 +21,9 @@
 /*
  * Watchdog
  */
-#define PM_RSTC		(BCM2835_PM_BASE+0x1c)
-#define PM_RSTS		(BCM2835_PM_BASE+0x20)
-#define PM_WDOG		(BCM2835_PM_BASE+0x24)
+#define PM_RSTC		0x1c
+#define PM_RSTS		0x20
+#define PM_WDOG		0x24
 
 #define PM_WDOG_RESET				0000000000
 #define PM_PASSWORD				0x5a000000
diff --git a/arch/arm/mach-bcm283x/wd.c b/arch/arm/mach-bcm283x/wd.c
new file mode 100644
index 000000000000..5a5188fd2e26
--- /dev/null
+++ b/arch/arm/mach-bcm283x/wd.c
@@ -0,0 +1,75 @@
+/*
+ * Copyright (C) 2017 Pengutronix, Lucas Stach <l.stach@pengutronix.de>
+ *
+ * Based on code from  Carlo Caione <carlo@carlocaione.org>
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
+#include <init.h>
+#include <io.h>
+#include <restart.h>
+
+#include <mach/wd.h>
+
+static void __iomem *wd_base;
+
+#define RESET_TIMEOUT 10
+
+static void __noreturn bcm2835_restart_soc(struct restart_handler *rst)
+{
+	uint32_t rstc;
+
+	rstc = readl(wd_base + PM_RSTC);
+	rstc &= ~PM_RSTC_WRCFG_SET;
+	rstc |= PM_RSTC_WRCFG_FULL_RESET;
+	writel(PM_PASSWORD | RESET_TIMEOUT, wd_base +  PM_WDOG);
+	writel(PM_PASSWORD | rstc, wd_base + PM_RSTC);
+
+	hang();
+}
+
+static int bcm2835_wd_probe(struct device_d *dev)
+{
+	struct resource *iores;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(iores);
+	}
+	wd_base = IOMEM(iores->start);
+
+	restart_handler_register_fn(bcm2835_restart_soc);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id bcm2835_wd_dt_ids[] = {
+	{
+		.compatible = "brcm,bcm2835-pm-wdt",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d bcm2835_wd_driver = {
+	.name		= "bcm2835_wd",
+	.of_compatible	= DRV_OF_COMPAT(bcm2835_wd_dt_ids),
+	.probe		= bcm2835_wd_probe,
+};
+
+static int __init bcm2835_wd_init(void)
+{
+	return platform_driver_register(&bcm2835_wd_driver);
+}
+device_initcall(bcm2835_wd_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
