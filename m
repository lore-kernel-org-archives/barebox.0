Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXCPD-00031o-PT
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 17:00:38 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 19:05:06 +0200
Message-Id: <1411664709-13699-13-git-send-email-dev@lynxeye.de>
In-Reply-To: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 12/15] tegra: pmc: add powerdomain handling
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

In order to use some devices we first have to power
up their power domain. Add support to do this in a
generic way.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-tegra/include/mach/tegra-powergate.h |  93 ++++++++++++++
 arch/arm/mach-tegra/tegra20-pmc.c                  | 139 ++++++++++++++++++++-
 2 files changed, 229 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra-powergate.h

diff --git a/arch/arm/mach-tegra/include/mach/tegra-powergate.h b/arch/arm/mach-tegra/include/mach/tegra-powergate.h
new file mode 100644
index 0000000..e32250a
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra-powergate.h
@@ -0,0 +1,93 @@
+/*
+ * Copyright (c) 2010 Google, Inc
+ *
+ * Author:
+ *	Colin Cross <ccross@google.com>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef _MACH_TEGRA_POWERGATE_H_
+#define _MACH_TEGRA_POWERGATE_H_
+
+struct clk;
+struct reset_control;
+
+#define TEGRA_POWERGATE_CPU	0
+#define TEGRA_POWERGATE_3D	1
+#define TEGRA_POWERGATE_VENC	2
+#define TEGRA_POWERGATE_PCIE	3
+#define TEGRA_POWERGATE_VDEC	4
+#define TEGRA_POWERGATE_L2	5
+#define TEGRA_POWERGATE_MPE	6
+#define TEGRA_POWERGATE_HEG	7
+#define TEGRA_POWERGATE_SATA	8
+#define TEGRA_POWERGATE_CPU1	9
+#define TEGRA_POWERGATE_CPU2	10
+#define TEGRA_POWERGATE_CPU3	11
+#define TEGRA_POWERGATE_CELP	12
+#define TEGRA_POWERGATE_3D1	13
+#define TEGRA_POWERGATE_CPU0	14
+#define TEGRA_POWERGATE_C0NC	15
+#define TEGRA_POWERGATE_C1NC	16
+#define TEGRA_POWERGATE_SOR	17
+#define TEGRA_POWERGATE_DIS	18
+#define TEGRA_POWERGATE_DISB	19
+#define TEGRA_POWERGATE_XUSBA	20
+#define TEGRA_POWERGATE_XUSBB	21
+#define TEGRA_POWERGATE_XUSBC	22
+#define TEGRA_POWERGATE_VIC	23
+#define TEGRA_POWERGATE_IRAM	24
+
+#define TEGRA_POWERGATE_3D0	TEGRA_POWERGATE_3D
+
+#define TEGRA_IO_RAIL_CSIA	0
+#define TEGRA_IO_RAIL_CSIB	1
+#define TEGRA_IO_RAIL_DSI	2
+#define TEGRA_IO_RAIL_MIPI_BIAS	3
+#define TEGRA_IO_RAIL_PEX_BIAS	4
+#define TEGRA_IO_RAIL_PEX_CLK1	5
+#define TEGRA_IO_RAIL_PEX_CLK2	6
+#define TEGRA_IO_RAIL_USB0	9
+#define TEGRA_IO_RAIL_USB1	10
+#define TEGRA_IO_RAIL_USB2	11
+#define TEGRA_IO_RAIL_USB_BIAS	12
+#define TEGRA_IO_RAIL_NAND	13
+#define TEGRA_IO_RAIL_UART	14
+#define TEGRA_IO_RAIL_BB	15
+#define TEGRA_IO_RAIL_AUDIO	17
+#define TEGRA_IO_RAIL_HSIC	19
+#define TEGRA_IO_RAIL_COMP	22
+#define TEGRA_IO_RAIL_HDMI	28
+#define TEGRA_IO_RAIL_PEX_CNTRL	32
+#define TEGRA_IO_RAIL_SDMMC1	33
+#define TEGRA_IO_RAIL_SDMMC3	34
+#define TEGRA_IO_RAIL_SDMMC4	35
+#define TEGRA_IO_RAIL_CAM	36
+#define TEGRA_IO_RAIL_RES	37
+#define TEGRA_IO_RAIL_HV	38
+#define TEGRA_IO_RAIL_DSIB	39
+#define TEGRA_IO_RAIL_DSIC	40
+#define TEGRA_IO_RAIL_DSID	41
+#define TEGRA_IO_RAIL_CSIE	44
+#define TEGRA_IO_RAIL_LVDS	57
+#define TEGRA_IO_RAIL_SYS_DDC	58
+
+int tegra_powergate_is_powered(int id);
+int tegra_powergate_power_on(int id);
+int tegra_powergate_power_off(int id);
+int tegra_powergate_remove_clamping(int id);
+
+/* Must be called with clk disabled, and returns with clk enabled */
+int tegra_powergate_sequence_power_up(int id, struct clk *clk,
+				      struct reset_control *rst);
+
+#endif /* _MACH_TEGRA_POWERGATE_H_ */
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 94167d6..0c5042a 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms and conditions of the GNU General Public License,
@@ -19,14 +19,18 @@
  * @brief Device driver for the Tegra 20 power management controller.
  */
 
-#include <common.h>
 #include <command.h>
+#include <common.h>
 #include <init.h>
 #include <io.h>
-
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <mach/lowlevel.h>
+#include <mach/tegra-powergate.h>
 #include <mach/tegra20-pmc.h>
 
 static void __iomem *pmc_base;
+static int tegra_num_powerdomains;
 
 /* main SoC reset trigger */
 void __noreturn reset_cpu(ulong addr)
@@ -37,6 +41,133 @@ void __noreturn reset_cpu(ulong addr)
 }
 EXPORT_SYMBOL(reset_cpu);
 
+static int tegra_powergate_set(int id, bool new_state)
+{
+	bool status;
+
+	status = readl(pmc_base + PMC_PWRGATE_STATUS) & (1 << id);
+
+	if (status == new_state) {
+		return 0;
+	}
+
+	writel(PMC_PWRGATE_TOGGLE_START | id, pmc_base + PMC_PWRGATE_TOGGLE);
+
+	return 0;
+}
+
+int tegra_powergate_power_on(int id)
+{
+	if (id < 0 || id >= tegra_num_powerdomains)
+		return -EINVAL;
+
+	return tegra_powergate_set(id, true);
+}
+
+int tegra_powergate_power_off(int id)
+{
+	if (id < 0 || id >= tegra_num_powerdomains)
+		return -EINVAL;
+
+	return tegra_powergate_set(id, false);
+}
+EXPORT_SYMBOL(tegra_powergate_power_off);
+
+int tegra_powergate_is_powered(int id)
+{
+	u32 status;
+
+	if (id < 0 || id >= tegra_num_powerdomains)
+		return -EINVAL;
+
+	status = readl(pmc_base + PMC_PWRGATE_STATUS) & (1 << id);
+	return !!status;
+}
+
+int tegra_powergate_remove_clamping(int id)
+{
+	u32 mask;
+
+	if (id < 0 || id >= tegra_num_powerdomains)
+		return -EINVAL;
+
+	/*
+	 * Tegra 2 has a bug where PCIE and VDE clamping masks are
+	 * swapped relatively to the partition ids
+	 */
+	if (id == TEGRA_POWERGATE_VDEC)
+		mask = (1 << TEGRA_POWERGATE_PCIE);
+	else if (id == TEGRA_POWERGATE_PCIE)
+		mask = (1 << TEGRA_POWERGATE_VDEC);
+	else
+		mask = (1 << id);
+
+	writel(mask, pmc_base + PMC_REMOVE_CLAMPING_CMD);
+
+	return 0;
+}
+EXPORT_SYMBOL(tegra_powergate_remove_clamping);
+
+/* Must be called with clk disabled, and returns with clk enabled */
+int tegra_powergate_sequence_power_up(int id, struct clk *clk,
+					struct reset_control *rst)
+{
+	int ret;
+
+	reset_control_assert(rst);
+
+	ret = tegra_powergate_power_on(id);
+	if (ret)
+		goto err_power;
+
+	ret = clk_enable(clk);
+	if (ret)
+		goto err_clk;
+
+	udelay(10);
+
+	ret = tegra_powergate_remove_clamping(id);
+	if (ret)
+		goto err_clamp;
+
+	udelay(10);
+	reset_control_deassert(rst);
+
+	return 0;
+
+err_clamp:
+	clk_disable(clk);
+err_clk:
+	tegra_powergate_power_off(id);
+err_power:
+	return ret;
+}
+EXPORT_SYMBOL(tegra_powergate_sequence_power_up);
+
+static int tegra_powergate_init(void)
+{
+	switch (tegra_get_chiptype()) {
+	case TEGRA20:
+		tegra_num_powerdomains = 7;
+		break;
+	case TEGRA30:
+		tegra_num_powerdomains = 14;
+		break;
+	case TEGRA114:
+		tegra_num_powerdomains = 23;
+		break;
+	case TEGRA124:
+		tegra_num_powerdomains = 25;
+		break;
+	default:
+		/* Unknown Tegra variant. Disable powergating */
+		tegra_num_powerdomains = 0;
+		break;
+	}
+
+	return 0;
+}
+
 static int tegra20_pmc_probe(struct device_d *dev)
 {
 	pmc_base = dev_request_mem_region(dev, 0);
@@ -45,6 +176,8 @@ static int tegra20_pmc_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
+	tegra_powergate_init();
+
 	return 0;
 }
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
