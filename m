Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPr7V-0008Jo-BR
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:15:19 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 10 Apr 2013 11:14:51 +0200
Message-Id: <1365585295-2420-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
References: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v4 09/13] tegra: add T20 power management controller driver
To: barebox@lists.infradead.org

Currently only implements system wide reset functionality.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20.dtsi                      |  5 ++
 arch/arm/mach-tegra/Makefile                   |  2 +-
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h | 37 ++++++++++++++
 arch/arm/mach-tegra/reset.c                    | 39 ---------------
 arch/arm/mach-tegra/tegra20-pmc.c              | 68 ++++++++++++++++++++++++++
 5 files changed, 111 insertions(+), 40 deletions(-)
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-pmc.h
 delete mode 100644 arch/arm/mach-tegra/reset.c
 create mode 100644 arch/arm/mach-tegra/tegra20-pmc.c

diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index cc76527..91858ec 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -17,4 +17,9 @@
 		reg = <0x60006000 0x1000>;
 		#clock-cells = <1>;
 	};
+
+	pmc {
+		compatible = "nvidia,tegra20-pmc";
+		reg = <0x7000e400 0x400>;
+	};
 };
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 1112d11..131a1d9 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,3 +1,3 @@
-obj-y += reset.o
 obj-y += tegra20-car.o
+obj-y += tegra20-pmc.o
 obj-y += tegra20-timer.o
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
new file mode 100644
index 0000000..a905399
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/* register definitions */
+#define PMC_CNTRL			0x000
+#define PMC_CNTRL_FUSE_OVERRIDE		(1 << 18)
+#define PMC_CNTRL_INTR_POLARITY		(1 << 17)
+#define PMC_CNTRL_CPUPWRREQ_OE		(1 << 16)
+#define PMC_CNTRL_CPUPWRREQ_POLARITY	(1 << 15)
+#define PMC_CNTRL_SIDE_EFFECT_LP0	(1 << 14)
+#define PMC_CNTRL_AOINIT		(1 << 13)
+#define PMC_CNTRL_PWRGATE_DIS		(1 << 12)
+#define PMC_CNTRL_SYSCLK_OE		(1 << 11)
+#define PMC_CNTRL_SYSCLK_POLARITY	(1 << 10)
+#define PMC_CNTRL_PWRREQ_OE		(1 << 9)
+#define PMC_CNTRL_PWRREQ_POLARITY	(1 << 8)
+#define PMC_CNTRL_BLINK_EN		(1 << 7)
+#define PMC_CNTRL_GLITCHDET_DIS		(1 << 6)
+#define PMC_CNTRL_LATCHWAKE_EN		(1 << 5)
+#define PMC_CNTRL_MAIN_RST		(1 << 4)
+#define PMC_CNTRL_KBC_RST		(1 << 3)
+#define PMC_CNTRL_RTC_RST		(1 << 2)
+#define PMC_CNTRL_RTC_CLK_DIS		(1 << 1)
+#define PMC_CNTRL_KBC_CLK_DIS		(1 << 0)
diff --git a/arch/arm/mach-tegra/reset.c b/arch/arm/mach-tegra/reset.c
deleted file mode 100644
index 91f9b3b..0000000
--- a/arch/arm/mach-tegra/reset.c
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Resetting an malta board
- */
-
-#include <common.h>
-#include <asm/io.h>
-#include <mach/iomap.h>
-
-#define PRM_RSTCTRL		TEGRA_PMC_BASE
-
-void __noreturn reset_cpu(ulong addr)
-{
-	int rstctrl;
-
-	rstctrl = __raw_readl((char *)PRM_RSTCTRL);
-	rstctrl |= 0x10;
-	__raw_writel(rstctrl, (char *)PRM_RSTCTRL);
-
-	unreachable();
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
new file mode 100644
index 0000000..b7d84d8
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -0,0 +1,68 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/**
+ * @file
+ * @brief Device driver for the Tegra 20 power management controller.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+
+#include <mach/tegra20-pmc.h>
+
+static void __iomem *pmc_base;
+
+/* main SoC reset trigger */
+void __noreturn reset_cpu(ulong addr)
+{
+	writel(PMC_CNTRL_MAIN_RST, pmc_base + PMC_CNTRL);
+
+	unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
+
+static int tegra20_pmc_probe(struct device_d *dev)
+{
+	pmc_base = dev_request_mem_region(dev, 0);
+	if (!pmc_base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id tegra20_pmc_dt_ids[] = {
+	{
+		.compatible = "nvidia,tegra20-pmc",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d tegra20_pmc_driver = {
+	.probe	= tegra20_pmc_probe,
+	.name	= "tegra20-pmc",
+	.of_compatible = DRV_OF_COMPAT(tegra20_pmc_dt_ids),
+};
+
+static int tegra20_pmc_init(void)
+{
+	return platform_driver_register(&tegra20_pmc_driver);
+}
+coredevice_initcall(tegra20_pmc_init);
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
